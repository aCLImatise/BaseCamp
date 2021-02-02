version 1.0

task Unlink {
  input {
    File file
  }
  command <<<
    unlink \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}