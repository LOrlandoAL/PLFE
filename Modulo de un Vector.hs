import Data.List (foldl')
type Vector = [Double]

moduloVector :: Vector -> Double
moduloVector = sqrt . sum . map (^2)

main :: IO ()
main = do
    let vector = [3, 4]  -- Por ejemplo, un vector en 2D con componentes [3, 4]
        modulo = moduloVector vector
    print modulo
