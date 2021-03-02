version 1.0

task Mglenvcsh {
  command <<<
    mglenv_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}