longitudPalabras :: String -> [(String, Int)]
longitudPalabras sentence = zip palabras longitudes
    where
        palabras = words sentence
        longitudes = map length palabras
--Zona de Testeos
main :: IO ()
main = do
    let frase = "Bienvenido a Haskell"
    putStrLn $ "Diccionario" ++ show (longitudPalabras frase)
