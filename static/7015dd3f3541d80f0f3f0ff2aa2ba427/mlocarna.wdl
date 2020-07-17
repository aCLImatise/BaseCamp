version 1.0

task Mlocarna {
  input {
    String fast_a_file
  }
  command <<<
    mlocarna \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_a_file: ""
  }
}