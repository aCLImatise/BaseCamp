version 1.0

task Mlocarna {
  input {
    File fast_a_file
  }
  command <<<
    mlocarna \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}