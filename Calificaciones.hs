import Data.Char (toUpper)
calificacion :: Float -> String
calificacion nota
    | nota < 7   = "Suficiente"
    | nota < 8   = "Bueno"
    | nota < 9   = "Notable"
    | nota < 10  = "Excelente"
    | otherwise  = "Desempenio insuficiente"

aplicarCalificacion :: [(String, Float)] -> [(String, String)]
aplicarCalificacion notas = zip (map (map toUpper . fst) notas) (map (calificacion . snd) notas)

--Zona de Testeos
main :: IO ()
main = do
    let notas = [("Matematicas", 6.5), ("Fisica", 5), ("Quimica", 3.4), ("Economia", 8.2), ("Historia", 9.7), ("Programacion", 10)]
    putStrLn $ "Asignaturas y Calificaciones: " ++ show (aplicarCalificacion notas)
