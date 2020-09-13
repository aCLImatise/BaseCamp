version 1.0

task SeSiMCMC {
  command <<<
    SeSiMCMC
  >>>
  output {
    File out_stdout = stdout()
  }
}