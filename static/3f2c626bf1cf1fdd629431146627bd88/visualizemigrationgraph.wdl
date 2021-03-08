version 1.0

task Visualizemigrationgraph {
  input {
    File? color_map_file
    String leaf_labeling
    String vertex_labeling
  }
  command <<<
    visualizemigrationgraph \
      ~{leaf_labeling} \
      ~{vertex_labeling} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    color_map_file: "Color map file\\n"
    leaf_labeling: "Leaf labeling"
    vertex_labeling: "Vertex labeling"
  }
  output {
    File out_stdout = stdout()
  }
}