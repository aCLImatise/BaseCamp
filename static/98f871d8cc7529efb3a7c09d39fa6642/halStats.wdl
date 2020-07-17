version 1.0

task HalStats {
  input {
    String hal_file
  }
  command <<<
    halStats \
      ~{hal_file}
  >>>
  parameter_meta {
    hal_file: ""
  }
}