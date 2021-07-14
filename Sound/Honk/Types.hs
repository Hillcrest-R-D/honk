-- | Core data types used by Honk.

module Sound.Honk.Types
    ( Pitch(..)
    ) where

-- | Represents a single Pitch, with a duration in seconds and a
-- frequency in hertz.
data Pitch = Pitch { duration :: Rational, frequency :: Double }
    deriving (Eq, Ord, Show)
