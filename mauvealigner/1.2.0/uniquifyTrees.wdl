version 1.0

task UniquifyTrees {
  input {
    File nexus_input_file
    File nexus_output_file
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
  output {
    File out_stdout = stdout()
    File out_nexus_output_file = "${in_nexus_output_file}"
  }
}