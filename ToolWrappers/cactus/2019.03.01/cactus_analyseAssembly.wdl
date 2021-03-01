version 1.0

task CactusAnalyseAssembly {
  command <<<
    cactus_analyseAssembly
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}