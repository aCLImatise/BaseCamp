version 1.0

task RunDadaSingleR {
  command <<<
    run_dada_single_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.6.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}