import Sound.Honk as Honk
import Sound.Honk.Types

testPitch = Pitch 0.5 440

main :: IO()
main = do
    Honk.playOne testPitch