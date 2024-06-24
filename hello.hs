module Main where

main :: IO ()
main = putStrLn (wrapHtml myhtml) 

wrapHtml content = "<html><body>" <> content <> "</body></html>"
myhtml = "Hello, workd"
