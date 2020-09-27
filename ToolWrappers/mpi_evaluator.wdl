version 1.0

task MpiEvaluator {
  command <<<
    mpi_evaluator
  >>>
  output {
    File out_stdout = stdout()
  }
}