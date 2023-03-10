
{-# LANGUAGE DeriveGeneric #-}

-- | Module containing the User and Message datatype 

module Datatypes (
    User (..),
    Message (..)
) where
import GHC.Generics
import Control.Lens
import Data.Text

-- | User datatype definition
data User = User {
    user_number :: Int, -- ^ Stores user number as an Integer
    msg_recived :: Int, -- ^ Stores received messages as an Integer
    u_message :: [Message]  
} deriving (Show, Generic)


-- | Message datatype definition
data Message = Message {
    from :: Int, -- ^ Stores from as an Integer
    to :: Int, -- ^ Stores to as an Integer
    content :: Text
} deriving (Show)