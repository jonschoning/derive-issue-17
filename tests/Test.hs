{-# LANGUAGE TemplateHaskell, DeriveDataTypeable, DeriveGeneric, StandaloneDeriving #-}

module Main where

import Data.Text
import Data.Time.Clock
import Data.Derive.Arbitrary
import Test.QuickCheck
import Data.DeriveTH
import System.IO.Unsafe

import Derive17

instance Arbitrary Text where
    arbitrary = return mempty

instance Arbitrary UTCTime where
    arbitrary = return $ unsafePerformIO getCurrentTime

$(derive makeArbitrary ''NoteListItem)

--instance Arbitrary NoteListItem where
--  arbitrary = NoteListItem <$> arbitrary
--                           <*> arbitrary
--                           <*> arbitrary
--                           <*> arbitrary
--                           <*> arbitrary
--                           <*> arbitrary

main :: IO ()
main = print =<< generate (arbitrary :: Gen NoteListItem)
