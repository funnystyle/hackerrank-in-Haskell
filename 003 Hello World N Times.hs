{-
Print "Hello World"  amount of times. The input portion will be handled automatically. You need to write a function with the recommended method signature.

Input Format

A single line of input containing integer , the number of times to print "Hello World".

Output Format

Output  lines, each containing "Hello World".

Constraints


Sample Input

4
Sample Output

Hello World
Hello World
Hello World
Hello World
Recommended Method Signature

Number Of Parameters: 1
Parameters: [n]
Returns: nil
For Hackers Using Clojure

This will be the outline of your function body (fill up the blank portion marked by underscores):

 (fn[n]___________________________)
For Hackers Using Scala

This will be the outline of your function body (fill up the blank portion marked by underscores):

 def f(n: Int) = ______________________
For Hackers Using Haskell

This will be the outline of your function body (fill up the blank portion marked by underscores):

 hello_worlds n = ______________________
For Hackers Using other Languages

You have to read input from standard input and write output to standard output. Please follow the input/output format mentioned above.

NOTE: You only need to submit the code above, after filling in the blanks appropriately. The input and output section will be handled by us. The focus is on writing the correct function.
-}

import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    --  Print "Hello World" on a new line 'n' times.
    hello_worlds n

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret

hello_worlds n = replicateM_ n $ putStrLn "Hello World"
