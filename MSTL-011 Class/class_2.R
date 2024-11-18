# Creating Matrix
m1 <- matrix(data=x8, nrow=4, ncol=5)  # Creates a matrix m1 with 4 rows and 5 columns
m1  # Displays matrix m1

m2 <- matrix(data=x8, nrow=4, ncol=5, byrow=TRUE)  # Creates a matrix m2 filled by rows
m2  # Displays matrix m2

# Creating data frame
x9 <- 6:9  # Creates a vector x9 from 6 to 9
x10 <- c(12, 18, 13, 20)  # Creates a vector x10
x11 <- c(7, 10, 14, 15)  # Creates a vector x11

data1 <- data.frame(x9, x10, x11)  # Combines x9, x10, x11 into a data frame
data1  # Displays data1
class(data1)  # Returns the class type of data1 (data frame)
class(m1)  # Returns the class type of matrix m1
class(x9)  # Returns the class type of vector x9

# Indexing Vectors and Matrices
x11[2:3]  # Accesses elements 2 and 3 of vector x11
x11[-1]  # Accesses all elements of x11 except the first one

m1  # Displays matrix m1
m1[2, 4]  # Accesses element in row 2, column 4 of matrix m1
m1[2:3, 3:4]  # Accesses rows 2 to 3 and columns 3 to 4 of matrix m1
m1[c(2, 4), c(2, 5)]  # Accesses rows 2 and 4, and columns 2 and 5 of matrix m1

# Exploring mtcars dataset
head(mtcars, 3)  # Displays first 3 rows of mtcars
tail(mtcars, 3)  # Displays last 3 rows of mtcars
?mtcars  # Opens documentation for mtcars dataset
data()  # Displays a list of available datasets in R

mtcars$cyl  # Accesses the 'cyl' column in mtcars dataset
mtcars[mtcars$cyl == 4, ]  # Filters rows where 'cyl' column equals 4
mtcars[mtcars$cyl == 4, c("wt", "mpg")]  # Filters rows where 'cyl' equals 4, displaying 'wt' and 'mpg' columns
mtcars[mtcars$cyl == 4, ][c("wt", "mpg")]  # Filters and displays 'wt' and 'mpg' columns for rows with 'cyl' equal to 4

# Conditional Statements
x13 <- c(14, 20, 30)  # Creates vector x13
x14 <- c(12, 23, 30)  # Creates vector x14

if(x13[1] > x14[1]) {  # Checks if the first element of x13 is greater than x14
  print("True")
} else {
  print("False")
}

if(x13[3] > x14[3]) {  # Compares third elements of x13 and x14
  print("x13 is winner")
} else if(x13[3] == x14[3]) {
  print("Both scored the same")
} else {
  print("x14 is winner")
}

# Function Definition
fn <- function(m = 2, n = 4) {  # Defines a function fn with default arguments m=2, n=4
  n^m  # Returns n raised to the power of m
}
fn(2, 5)  # Calls function with arguments 2 and 5
fn()  # Calls function with default arguments

nfill <- function(m, n) {  # Defines a function to calculate the permutation
  factorial(n) / factorial(n - m)
}
nfill(3, 5)  # Calls nfill function with m=3 and n=5

nfon2 <- function(m, n) {  # Defines a more complex function
  sum <- 0
  for (i in 0:n-1) {
    sum <- sum + choose(n, i) * (-1)^i * (n - i)^m
  }
  print(sum)
}
nfon2(4, 3)  # Calls nfon2 function

n11on <- function(m, n) {  # Defines a function to return factorial of n
  factorial(n)
}
n11on(5, 5)  # Calls n11on function with m=5 and n=5

# Plotting Functions
x <- seq(-2, 2, 0.1)  # Creates a sequence from -2 to 2 with step 0.1
fn <- c()  # Initializes an empty vector for the function values

for(i in 1:length(x)) {  # Loops through each element of x
  if(x[i] >= 0) {
    fn[i] <- 1
  } else {
    fn[i] <- 0
  }
}
fn  # Displays the function values
plot(x, fn, type="s")  # Plots the step function

# Scatter Plot with Normal Distribution
x15 <- rnorm(300, mean=5, sd=2)  # Generates 300 random numbers from a normal distribution
x <- seq(-3, 13, length.out=300)  # Creates a sequence of 300 values for x-axis
plot(x = x, y = x15, xlab = "Values of x", ylab = "Values of f[x]", main = "Scatter Plot")  # Plots the scatter plot
abline(h = mean(x15), col = "red", lwd = 3)  # Adds a horizontal line at mean of x15
abline(v = mean(x), col = "blue", lwd = 3)  # Adds a vertical line at mean of x

# Linear Equation Plot
x <- seq(-5, 5, 0.1)  # Creates a sequence for x values
y <- 8 / 3 - 2 / 3 * x  # Defines the linear equation 2x + 3y = 8
plot(x, y, type = "l")  # Plots the line

# 3D Plot
x <- seq(-15, 15, 0.1)  # Creates a sequence for x values
y <- seq(-15, 15, 0.1)  # Creates a sequence for y values
fx <- function(x, y) {  # Defines a function for 3D plot
  3 * x + 4 * y + 6
}
z <- outer(x, y, fx)  # Applies fx function to generate z values
persp(x, y, z, theta = 30, phi = 10, col = "blue")  # 3D surface plot with blue color
persp(x, y, z, theta = 90, phi = 2, col = "red")  # 3D surface plot with red color

# Gamma Function Plot
x <- seq(0.1, 6, 0.1)  # Creates a sequence for x values
gamma(x)  # Computes the gamma function for x
plot(x, y = gamma(x), type = "l")  # Plots the gamma function

# Integration
int1 <- function(x) {x^3}  # Defines the function x^3
integrate(int1, lower = 0, upper = 2)$value  # Integrates x^3 from 0 to 2

int2 <- function(y) {exp(-y) * sin(y)^4}  # Defines a 2D function
integrate(int2, lower = 0, upper = Inf)$value  # Integrates the function from 0 to infinity

# Double Integration
int3 <- function(z) {z[1]^2 + 2 * z[2]}  # Defines a 2D function for double integration
library(cubature)  # Loads the cubature library for multidimensional integration
hcubature(int3, lowerLimit = c(0, 0), upperLimit = c(2, 1))$integral  # Performs double integration

# Differentiation
fx1 <- expression(x^3 + 2 * x^2 + 7)  # Defines the expression for the function
fx2 <- D(fx1, "x")  # Differentiates the function with respect to x
x <- 4  # Defines the point at which to evaluate the derivative
eval(fx2)  # Evaluates the derivative at x = 4
