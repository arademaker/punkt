{-# LANGUAGE OverloadedStrings #-}

import NLP.Punkt
import Data.Text (pack)


split :: FilePath -> IO ()
split file = do
  content <- readFile file
  mapM_ print  (split_sentences $ pack content)

classify :: FilePath -> IO ()
classify file = do
  content <- readFile file
  mapM_ print (classify_punkt $ pack content)


