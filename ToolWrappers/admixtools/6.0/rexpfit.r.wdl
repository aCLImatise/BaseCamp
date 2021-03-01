version 1.0

task Rexpfitr {
  command <<<
    rexpfit_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}