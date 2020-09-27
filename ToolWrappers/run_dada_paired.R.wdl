version 1.0

task RunDadaPairedR {
  command <<<
    run_dada_paired_R
  >>>
  output {
    File out_stdout = stdout()
  }
}