version 1.0

task BayesTyperTools {
  command <<<
    bayesTyperTools
  >>>
  output {
    File out_stdout = stdout()
  }
}