import Euterpea

miMelodia :: Music Pitch
miMelodia = line [c 4 qn, c 4 qn, g 4 qn, g 4 qn, a 4 qn, a 4 qn, g 4 hn]

main :: IO ()
main = play miMelodia
