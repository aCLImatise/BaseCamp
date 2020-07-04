version 1.0

task UniquifyTrees {
  input {
    String nexus_input_file
    String nexus_output_file
  }
  command <<<
    uniquifyTrees \
      ~{nexus_input_file} \
      ~{nexus_output_file}
  >>>
  parameter_meta {
    nexus_input_file: ""
    nexus_output_file: ""
  }
}