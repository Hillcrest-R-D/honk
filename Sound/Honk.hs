-- | Cross-platform interface to the PC speaker.
--
-- Here's an example:
--
-- > simpleBeep = play [Pitch 1.0 440]
--
-- For more examples, see the readme.

module Sound.Honk
    (
    -- * Output
      play
    , playOne

    -- * Types
    , module Sound.Honk.Types

    -- * Utility functions
    , module Sound.Honk.Util

    ) where

import Sound.Honk.Internal
import Sound.Honk.Types
import Sound.Honk.Util

-- | Play multiple Pitchs in order, one after the other.
play :: [Pitch] -> IO ()
play pitchs = withBeepFd run
  where
    run handle = mapM_ (\(Pitch dur freq) -> beepDo handle dur freq) pitchs

-- | Play a single Pitch.
playOne :: Pitch -> IO ()
playOne = play . (:[])
