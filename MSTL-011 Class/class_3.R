# Control Charts 
# Prepare X chart of given data

# Ques1:
# Define the sample means (MN) and ranges (RG) for the data
MN <- c(10.1, 10.7, 9.7, 10.5, 10.0, 8.5, 9.3, 8.5, 9.5, 9.1)
RG <- c(7, 5, 9, 4, 7, 4, 8, 7, 9, 5)

# Number of measurements per sample
n <- 6

# Calculate mean of sample means (process center)
M <- mean(MN); M

# Calculate mean of sample ranges (average range)
R <- mean(RG); R

# A2 factor from control chart constants for n=6
A2 <- 0.483

# Compute Upper Control Limit (UCL) for X-bar chart
UCLx <- M + A2 * R; UCLx

# Compute Lower Control Limit (LCL) for X-bar chart
LCLx <- M - A2 * R; LCLx

# Center Line (CL) for X-bar chart
CLx <- M; CLx

# Print UCL, CL, and LCL values
cat(UCLx, CLx, LCLx, "\n")

# Plot X-bar chart
plot(x = 1:10, y = MN, type = "o", pch = 18, cex = 2, ylim = c(5, 14),
     col = "red", main = "X-Chart", xlab = "Number of sample", 
     ylab = "Mean of Samples")

# Add horizontal lines for UCL, CL, and LCL
abline(h = c(UCLx, CLx, LCLx), lty = c(2, 1, 2), col = c(2, 6, 2), lwd = rep(2, 3))

# Label UCL, CL, and LCL on the right axis
axis(side = 4, at = c(UCLx, CLx, LCLx), 
     labels = c("UCL=12.7295", "CL=9.59", "LCL=6.4505"))

# Load required library
library(graphics)

# Ques2:
# Number of measurements per sample for second dataset
n <- 4

# Load data from a text file into a data frame(for loading file.txt , downlaod file.text uploaded here and save it in your working directory or else give the path of directory where it is saved)
discs <- read.table("file.txt", header = FALSE); discs

# Calculate sample means for each row
SampM <- apply(discs, 1, mean); SampM

# Calculate sample ranges for each row
SampR <- c()
for (i in 1:nrow(discs)) {
  SampR[i] <- max(discs[i,]) - min(discs[i,])
}
SampR

# Compute overall mean of sample means (process center)
M <- mean(SampM); M

# Compute overall mean of sample ranges
R <- mean(SampR); R

# A2 factor for n=4
A2 <- 0.729

# Compute control limits for X-bar chart
UCLx2 <- M + A2 * R; UCLx2
LCLx2 <- M - A2 * R; LCLx2
CLx2 <- M; CLx2

# Plot X-bar chart for second dataset
plot(x = 1:24, y = SampM, col = "red", main = "X-Chart for Disc Thickness",
     xlab = "Number of Samples", ylab = "Mean of Sample", type = "o", ylim = c(17, 47))

# Add horizontal lines for control limits
abline(h = c(UCLx2, LCLx2, CLx2), lty = c(2, 2, 1), lwd = c(1, 1, 2), col = c(1, 1, 2))

# Label UCL, CL, and LCL on the right axis
axis(side = 4, at = c(UCLx2, CLx2, LCLx2), 
     labels = c("UCL=46.98967", "CL=32.16667", "LCL=17.34367"))

# Using qcc library for quality control charts
library(qcc)

# Generate X-bar chart for the data
qcc(discs, type = "xbar", xlab = "Sample Number", ylab = "Mean", title = "Xbar-Chart")

# Get control limits without plotting
qcc(discs, type = "xbar", xlab = "Sample Number", ylab = "Mean", title = "Xbar-Chart", plot = FALSE)$limits

# Prepare R Chart (not implemented but indicated for further analysis)
---Homework
