version 1.0

task HcaMtxTo10x {
  input {
    String invalid
    String var_input
    Directory directory
  }
  command <<<
    hca-mtx-to-10x \
      ~{invalid} \
      ~{var_input} \
      ~{directory}
  >>>
  parameter_meta {
    invalid: ""
    var_input: ""
    directory: ""
  }
}