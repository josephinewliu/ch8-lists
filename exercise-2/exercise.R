# Exercise 2: using `*apply()` functions

# Create a *list* of 10 random numbers. Use the `runif()` function to make a 
# vector of random numbers, then use `as.list()` to convert that to a list
rand <- as.list(runif(10, 1, 100))

# Use `lapply()` to apply the `round()` function to each number, rounding it to 
# the nearest 0.1 (one decimal place)
lapply(rand, round, 1)

# Create a variable 'sentence' that contains a sentence of text (something 
# longish). Make the sentence lowercase; you can use a function to help.
sentence <- "i got 3 hours of sleep last night and i'm so tired that i can literally feel my eyes rolling to the back of my head"

# Use the `strsplit()` function to split the sentence into a vector of letters.
# Hint: split on `""` to split every character
# Note: this will return a _list_ with 1 element (which is the vector of letters)
letters <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
letters_vector <- letters[[1]]

# Use the `unique()` function to get a vector of unique letters
unique_letters <- unique(letters_vector)

# Define a function `count_occurrences` that takes in two parameters: a letter 
# and a vector of letters. The function should return how many times that letter
# occurs in the provided vector.
# Hint: use a filter operation!
count_occurrences <- function(letters_vector, letter) {
  count <-length(letters_vector[letters_vector == letter])
  return(count)
}

# Call your `count_occurrences()` function to see how many times the letter 'e'
# is in your sentence.
count_occurrences(letters_vector, "e")

# Use `sapply()` to apply your `count_occurrences()` function to each unique 
# letter in the vector to determine their frequencies.
# Convert the result into a list (using `as.list()`).
frequency <- as.list(sapply(unique_letters, count_occurrences, letters_vector))

# Print the resulting list of frequencies
print(frequency)
