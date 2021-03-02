version 1.0

task RunDadaPairedR {
  command <<<
    run_dada_paired_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}