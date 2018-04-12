# Quiz 01

### 1.
R was developed by statisticians working at
- The University of Auckland
 - Bell Labs
 - Harvard University
 - StatSci

```sh 
The University of Auckland
```

### 2.
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.

 - The freedom to sell the software for any price.
 - The freedom to run the program, for any purpose.
 - The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
- The freedom to restrict access to the source code for the software.
- The freedom to study how the program works, and adapt it to your needs.
- The freedom to redistribute copies so you can help your neighbor.
- The freedom to prevent users from using the software for undesirable purposes.

```sh 
The freedom to sell the software for any price.
The freedom to restrict access to the source code for the software.
The freedom to prevent users from using the software for undesirable purposes.
```

### 3.
In R the following are all atomic data types EXCEPT: (Select all that apply)

 - matrix
 - integer
 - logical
 - character
 - data frame
 - list
 - array
 - numeric
 - table
 - complex

 ```sh 
matrix
data frame
list
array
table
```

### 4.
If I execute the expression x <- 4 in R, what is the class of the object `x' as determined by the `class()' function?

 - real
 - matrix
 - list
 - vector
 - integer
 - complex
 - numeric
 
```sh 
numeric
```
 
 ### 5. 
 What is the class of the object defined by x <- c(4, TRUE)?
 
 - numeric
 - logical
 - list
 - matrix
 - character
 - integer
 
 ```sh 
 numeric
The numeric class is the "lowest common denominator" here and so all elements will be coerced into that class.
```

### 6.
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?

 - a 3 by 2 matrix
 - a 3 by 3 matrix
 - a vector of length 2
 - matrix with two rows and three columns
 - a vector of length 3
 -  a 2 by 2 matrix

```s
matrix with two rows and three columns
The 'rbind' function treats vectors as if they were rows of a matrix. It then takes those vectors and binds them together row-wise to create a matrix.
```

###7.
A key property of vectors in R is that 

 - the length of a vector must be less than 32,768
- elements of a vector all must be of the same class
- elements of a vector can only be character or numeric
- elements of a vector can be of different classes

```s
elements of a vector all must be of the same class
a vector cannot have have attributes like dimensions
```

###8. 
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[2]] give me? Select all that apply.

 - character vector of length 1.
 - a character vector containing the letter "a".
 - a list containing the number 2 and the letter "a".
 - a character vector with the elements "a" and "b".
 - a list containing character vector with the letter "a".

```s
character vector of length 1.
a character vector containing the letter "a"
```

###9.
Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?

 - a numeric vector with elements 3, 2, 3, 4.
 - an integer vector with elements 3, 2, 3, 6.
 - a numeric vector with elements 1, 2, 3, 6.
 - an integer vector with elements 3, 2, 3, 4.
 - a numeric vector with elements 3, 2, 3, 6.
 - a numeric vector with elements 3, 4, 5, 6.

```s
a numeric vector with elements 3, 4, 5, 6.
```

###10.
Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) and I want to set all elements of this vector that are less than 6 to be equal to zero. What R code achieves this? Select all that apply.

 - x[x %in% 1:5] <- 0
 - x[x < 6] <- 0
 - x[x <= 5] <- 0
 - x[x == 6] <- 0
 - x[x == 0] < 6
 - x[x > 6] <- 0
 - x[x == 0] <- 6
 - x[x != 6] <- 0
 - x[x >= 6] <- 0
 - x[x > 0] <- 6
 - x[x < 6] == 0

```s
x[x %in% 1:5] <- 0
x[x < 6] <- 0
x[x <= 5] <- 0
```
