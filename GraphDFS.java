import java.util.*;

public class GraphDFS {
    private Map<Integer, List<Integer>> adj = new HashMap<>();

    public void addEdge(int u, int v) {
        adj.computeIfAbsent(u, x -> new ArrayList<>()).add(v);
    }

    public void dfs(int node, Set<Integer> visited) {
        if (!visited.contains(node)) {
            visited.add(node);
            System.out.print(node + " ");
            for (int neighbor : adj.getOrDefault(node, new ArrayList<>())) {
                dfs(neighbor, visited);
            }
        }
    }

    public static void main(String[] args) {
        GraphDFS g = new GraphDFS();
        g.addEdge(0, 1);
        g.addEdge(0, 2);
        g.addEdge(1, 3);
        g.addEdge(1, 4);

        g.dfs(0, new HashSet<>());
    }
}
