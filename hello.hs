module Main where

main :: IO ()
main = putStrLn (wrapHtml myhtml) 

wrapHtml content = "<html><body>" <> content <> "</body></html>"
myhtml = "Hello, workd"

makeHtml :: String -> String -> String
makeHtml title content = html_ (head_ (title_ title) <> body_ content)


html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"


el :: String -> String -> String
el tag content = 
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"