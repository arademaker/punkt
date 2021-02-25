{-# LANGUAGE OverloadedStrings #-}

import NLP.Punkt
import Data.Text (pack)


segment_test :: FilePath -> IO ()
segment_test file = do
  content <- readFile file
  mapM_ print  (split_sentences $ pack content)

