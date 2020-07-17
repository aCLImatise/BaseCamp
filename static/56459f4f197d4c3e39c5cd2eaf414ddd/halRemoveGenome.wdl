version 1.0

task HalRemoveGenome {
  input {
    String in_file
    String delete_node
  }
  command <<<
    halRemoveGenome \
      ~{in_file} \
      ~{delete_node}
  >>>
  parameter_meta {
    in_file: ""
    delete_node: ""
  }
}