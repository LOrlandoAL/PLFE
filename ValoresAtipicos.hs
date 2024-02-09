atipico :: [Double] -> Double -> Bool
atipico muestra n =
    let media = sum muestra / fromIntegral (length muestra)
        desviacion = sqrt $ sum [(x - media)^2 | x <- muestra] / fromIntegral (length muestra)
        puntuacion = (n - media) / desviacion
    in puntuacion < -3 || puntuacion > 3

datosAtipicos :: [Double] -> [Double]
datosAtipicos muestra = filter (atipico muestra) muestra

--Zona de Testeos
main :: IO ()
main = do
    let muestra = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1000]
    putStrLn $ "Datos atípicos en la muestra: " ++ show (datosAtipicos muestra)
