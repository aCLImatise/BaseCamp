version 1.0

task GvfIit {
  command <<<
    gvf_iit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}