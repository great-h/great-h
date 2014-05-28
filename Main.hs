{-# LANGUAGE OverloadedStrings #-}
import System.Environment
import System.Process
import Control.Monad

main = do
  args <- getArgs
  case length args of
    1 ->
      case head args of
        "open" -> open
        _ -> help
    0 -> help

open :: IO ()
open = callCommand $ "open http://great-h.github.io/"

help :: IO ()
help = putStrLn "usage: great-h open"
