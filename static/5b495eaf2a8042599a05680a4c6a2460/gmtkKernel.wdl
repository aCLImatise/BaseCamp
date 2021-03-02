version 1.0

task GmtkKernel {
  command <<<
    gmtkKernel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}