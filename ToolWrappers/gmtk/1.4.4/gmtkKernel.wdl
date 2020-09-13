version 1.0

task GmtkKernel {
  command <<<
    gmtkKernel
  >>>
  output {
    File out_stdout = stdout()
  }
}