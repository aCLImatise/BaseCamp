version 1.0

task SeSiMCMC {
  command <<<
    SeSiMCMC
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}