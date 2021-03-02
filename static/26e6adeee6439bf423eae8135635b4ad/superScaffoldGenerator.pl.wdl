version 1.0

task SuperScaffoldGeneratorpl {
  command <<<
    superScaffoldGenerator_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}