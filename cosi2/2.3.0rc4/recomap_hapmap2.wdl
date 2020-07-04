version 1.0

task RecomapHapmap2 {
  input {
    String one_kg_map_directory
  }
  command <<<
    recomap_hapmap2 \
      ~{one_kg_map_directory}
  >>>
  parameter_meta {
    one_kg_map_directory: ""
  }
}