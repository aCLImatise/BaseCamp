version 1.0

task BlossomRandGraphpy {
  input {
    Int? number_vertices_graphnote
    String? is_probability_edge
    Float? weight_edge_uniformw
  }
  command <<<
    blossom_randGraph_py \
      ~{if defined(number_vertices_graphnote) then ("-N " +  '"' + number_vertices_graphnote + '"') else ""} \
      ~{if defined(is_probability_edge) then ("-p " +  '"' + is_probability_edge + '"') else ""} \
      ~{if defined(weight_edge_uniformw) then ("-w " +  '"' + weight_edge_uniformw + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_vertices_graphnote: "is the number of vertices in graph\\nNote: N must be even and an integer"
    is_probability_edge: "is the probability of an edge"
    weight_edge_uniformw: "is the weight of the edge, uniform(-w, w)\\nDefault values are: N=1000, p=1.0, w=5"
  }
  output {
    File out_stdout = stdout()
  }
}