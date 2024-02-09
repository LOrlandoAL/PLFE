sumaCuadrado :: Float -> Float -> Float
sumaCuadrado x y = x + y^2

modulo :: [Float] -> Float
modulo = sqrt . foldl sumarCuadrado 0
    where
        sumarCuadrado :: Float -> Float -> Float
        sumarCuadrado acumulador valor = acumulador + valor^2

--Zona de Testeos
main :: IO ()
main = do
    putStrLn $ "El módulo del vector (3, 4) es: " ++ show (modulo [3, 4])
    putStrLn $ "El módulo del vector (1, 2, 3) es: " ++ show (modulo [1, 2, 3])
