version 1.0

task Pars {
  command <<<
    pars
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}