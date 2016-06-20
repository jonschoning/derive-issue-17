{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}

module Derive17 where

import Data.Data           (Data, Typeable)
import Data.Text           (Text)
import Data.Time           (UTCTime)
import GHC.Generics        (Generic)

data NoteListItem = NoteListItem {
      noteListItemId     :: !Text
    , noteListItemHash   :: !Text
    , noteListItemTitle  :: !Text
    , noteListItemLength :: !Int
    , noteListItemCreatedAt :: !UTCTime
    , noteListItemUpdatedAt :: !UTCTime
    } deriving (Show, Eq, Data, Typeable, Generic, Ord)
