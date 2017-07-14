{-
This is an introductory challenge. The purpose of this challenge is to give you a working I/O template in your preferred language. It includes scanning  integers from STDIN, calling a function, returning a value, and printing it to STDOUT.

Your task is to scan two numbers,  and  from STDIN, and print the sum  on STDOUT.

Note: The code has been saved in a template that you can submit if you want.

Input Format

You are given two integers,  and  on separate lines.

Output Format

Output an integer that denotes

Constraints


Sample Input

2
3
Sample Output

5
-}

solveMeFirst a b = a + b

main = do
    val1 <- readLn
    val2 <- readLn
    let sum = solveMeFirst val1 val2
    print sum
