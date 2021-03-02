version 1.0

task RunDadaSingleR {
  command <<<
    run_dada_single_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}