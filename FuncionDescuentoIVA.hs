aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio - (precio * descuento / 100)

aplicarIVA :: Float -> Float -> Float
aplicarIVA precio porcentaje = precio + (precio * porcentaje / 100)

precioCesta :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
precioCesta cesta funcion = sum [funcion precio descuento | (precio, descuento) <- cesta]

--Zona de testeos
main :: IO ()
main = do
    let cesta = [(1000, 20), (500, 10), (100, 1)]
    putStrLn $ "El precio de la compra tras aplicar los descuentos es: " ++ show (precioCesta cesta aplicarDescuento)
    putStrLn $ "El precio de la compra tras aplicar el IVA es: " ++ show (precioCesta cesta aplicarIVA)
