version 1.0

task Visualizeclonetree {
  input {
    File? color_map_file
    String? vertex_labeling
    String leaf_labeling
  }
  command <<<
    visualizeclonetree \
      ~{leaf_labeling} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""} \
      ~{if defined(vertex_labeling) then ("-l " +  '"' + vertex_labeling + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    color_map_file: "Color map file"
    vertex_labeling: "Vertex labeling\\n"
    leaf_labeling: "Leaf labeling"
  }
  output {
    File out_stdout = stdout()
  }
}