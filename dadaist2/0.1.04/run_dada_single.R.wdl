version 1.0

task RunDadaSingleR {
  command <<<
    run_dada_single_R
  >>>
  output {
    File out_stdout = stdout()
  }
}