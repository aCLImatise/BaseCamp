version 1.0

task RecomapHapmap2 {
  input {
    Directory one_kg_map_directory
  }
  command <<<
    recomap_hapmap2 \
      ~{one_kg_map_directory}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one_kg_map_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}