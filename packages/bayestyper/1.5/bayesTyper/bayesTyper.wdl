version 1.0

task BayesTyper {
  command <<<
    bayesTyper
  >>>
  output {
    File out_stdout = stdout()
  }
}