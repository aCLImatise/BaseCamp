version 1.0

task Dcmftest {
  input {
    File file_dot_dot_dot
  }
  command <<<
    dcmftest \
      ~{file_dot_dot_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}