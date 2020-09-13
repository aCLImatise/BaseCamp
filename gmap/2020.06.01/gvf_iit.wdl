version 1.0

task GvfIit {
  command <<<
    gvf_iit
  >>>
  output {
    File out_stdout = stdout()
  }
}