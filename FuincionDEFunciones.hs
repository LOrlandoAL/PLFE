aplicaFuncionLista :: (a -> b) -> [a] -> [b]
aplicaFuncionLista funcion lista = map funcion lista

cuadrado :: Num a => a -> a
cuadrado n = n * n

-- zona de Testeos
main :: IO ()
main = do
    let lista = [1, 2, 3, 4]
    putStrLn $ "El resultado de aplicar la función cuadrado a la lista es: " ++ show (aplicaFuncionLista cuadrado lista)
