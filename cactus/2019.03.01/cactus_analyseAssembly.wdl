version 1.0

task CactusAnalyseAssembly {
  command <<<
    cactus_analyseAssembly
  >>>
  output {
    File out_stdout = stdout()
  }
}