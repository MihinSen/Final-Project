import qualified Data.Map as Map
import qualified Data.Set as Set

type Graph = Map.Map Int [Int]

dfs :: Graph -> Int -> Set.Set Int -> [Int]
dfs graph node visited
    | Set.member node visited = []
    | otherwise = node : concatMap (\n -> dfs graph n newVisited) neighbors
    where
        neighbors = Map.findWithDefault [] node graph
        newVisited = Set.insert node visited

sampleGraph :: Graph
sampleGraph = Map.fromList [
    (0, [1,2]),
    (1, [3,4]),
    (2, []),
    (3, []),
    (4, [])
    ]

main = print $ dfs sampleGraph 0 Set.empty
