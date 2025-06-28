data Tree a = Empty | Node a (Tree a) (Tree a)

inOrder :: Tree a -> [a]
inOrder Empty = []
inOrder (Node val left right) = inOrder left ++ [val] ++ inOrder right

sampleTree :: Tree Int
sampleTree = Node 1 (Node 2 (Node 4 Empty Empty) (Node 5 Empty Empty)) (Node 3 Empty Empty)

main = print $ inOrder sampleTree  -- Output: [4,2,5,1,3]
