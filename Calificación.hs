import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

asignarCalificaciones :: Map String Int -> Map String String
asignarCalificaciones = Map.map asignarCalificacion

asignarCalificacion :: Int -> String
asignarCalificacion nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise  = "Desempenio insuficiente"

-- Uso
main :: IO ()
main = do
    let notas = Map.fromList [("Matematicas", 92), ("Fisica", 78), ("Historia", 85)]
        calificaciones = asignarCalificaciones notas
    print calificaciones
