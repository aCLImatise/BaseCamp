version 1.0

task SuperScaffoldGeneratorpl {
  command <<<
    superScaffoldGenerator_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}