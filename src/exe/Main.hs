{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib      (inc)
import Prelude  -- explicitly all

main :: IO ()
main = putStrLn $ "inc 1 =" <> show (inc 1)