# BASIC SYNTAX AND ARITHMETIC
log(8,2)  # Calculates log of 8 to the base 2
x = 10     # Assigns value 10 to x
y <- "Hello,R!"  # Assigns a string to y using the '<-' operator
z = 5      # Assigns value 5 to z
x + z     # Adds values of x and z

# BASIC VECTOR
v = c(1, 2, 3, 4, 5, 6)  # Creates a vector v with 6 elements
v[5]  # Accesses the 5th element of vector v, which is 5
a = 3:10  # Creates a sequence of numbers from 3 to 10
a        # Displays the sequence from 3 to 10
2 > 4    # Evaluates whether 2 is greater than 4, returns FALSE
x3 = c(FALSE, TRUE, FALSE, TRUE, TRUE)  # Creates a boolean vector
class(x3)  # Returns the class type of vector x3 (logical)
x4 = c("RAMESH", "PAWAN", "PAKANJ")  # Creates a character vector
class(x4)  # Returns the class type of vector x4 (character)
class(v)  # Returns the class type of vector v (numeric)
x5 = c(2+3i, 3+22i)  # Creates a complex number vector
class(x5)  # Returns the class type of vector x5 (complex)
x6 = c(2L, 3L, 5L, 10L)  # Creates an integer vector using L suffix
class(x6)  # Returns the class type of vector x6 (integer)


# BASIC BUILT-IN FUNCTIONS
?c()  # Opens the documentation for the 'c' function (concatenate)
?seq()  # Opens the documentation for the 'seq' function (sequence generation)

# The ?<function> will open the help documentation for the given function.

# Creating a sequence from 5 to 11 with a step of 2
seq(5, 11, 2)  
# Creating a sequence from 5 to 20 with a step of 4
seq(5, 20, 4)
seq()  # Default sequence from 1 to 1 with a step of 1

x7 = 1:1000  # Creates a sequence of integers from 1 to 1000
x7         # Displays the sequence

# Quantile function splits the dataset into specified probabilities
?quantile()  # Opens documentation for 'quantile' function
quantile(x7)  # Calculates the quartiles of x7
quantile(x7, prob = seq(0, 1, 0.10))  # Calculates quantiles at 10% intervals
quantile(x7, prob = seq(0, 1, 0.13))  # Calculates quantiles at 13% intervals
quantile(x7, prob = seq(0, 1, 0.01))  # Calculates quantiles at 1% intervals

# Repeat function repeats an element a specified number of times
?rep()  # Opens documentation for the 'rep' function
rep(5, 3)  # Repeats the number 5 three times
rep(9, 67)  # Repeats the number 9 sixty-seven times
rep(c(5L, "RAMESH"), times = c(3, 6))  # Repeats the integer 5L three times and the string "RAMESH" six times

# Sample function generates random samples from a set of values
?sample()  # Opens documentation for the 'sample' function
sample(c(0, 1), size = 10, replace = TRUE, prob = c(0.7, 0.3))  # Samples with replacement and specified probabilities
sample(c(0, 1), size = 10, replace = FALSE, prob = c(0.7, 0.3))  # Error: Cannot sample without replacement when the sample size is larger than the population size
set.seed(2003)  # Sets the seed for reproducibility in random operations
