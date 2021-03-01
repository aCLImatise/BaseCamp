version 1.0

task Selscan {
  command <<<
    selscan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}