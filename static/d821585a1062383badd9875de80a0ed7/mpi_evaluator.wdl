version 1.0

task MpiEvaluator {
  command <<<
    mpi_evaluator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}