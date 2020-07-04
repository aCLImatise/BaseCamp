version 1.0

task ShowDiff {
  input {
    String delta_file
  }
  command <<<
    show-diff \
      ~{delta_file}
  >>>
  parameter_meta {
    delta_file: ""
  }
}