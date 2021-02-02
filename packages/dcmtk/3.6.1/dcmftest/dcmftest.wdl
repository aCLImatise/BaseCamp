version 1.0

task Dcmftest {
  input {
    File file_dot_dot_dot
  }
  command <<<
    dcmftest \
      ~{file_dot_dot_dot}
  >>>
  parameter_meta {
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}