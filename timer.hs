import System.Environment
import Control.Concurrent 
import Data.List

timer 0 = putStrLn "Finished"
timer n = do 
    threadDelay 60000000
    timer (n-1)

main = do
    args <- getArgs 
    let minutes = read (head args) :: Int
    putStrLn ("Starting timer: " ++ show minutes ++ " minutes")
    timer minutes
