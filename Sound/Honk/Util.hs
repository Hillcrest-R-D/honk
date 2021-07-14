-- | Miscellaneous utility functions.

module Sound.Honk.Util
    ( freqToMidi
    , midiToFreq
    , loop
    ) where

-- | Convert a frequency to a MIDI Pitch value.
freqToMidi :: Floating a => a -> a
freqToMidi n = 69 + 12 * log2 (n / 440)

-- | Convert a MIDI Pitch value to a frequency.
midiToFreq :: Floating a => a -> a
midiToFreq n = 440 * 2 ** ((n - 69) / 12)

log2 :: Floating a => a -> a
log2 = logBase 2

-- | Repeat a sequence a specified number of times.
loop :: Int -> [a] -> [a]
loop n = concat . replicate n
