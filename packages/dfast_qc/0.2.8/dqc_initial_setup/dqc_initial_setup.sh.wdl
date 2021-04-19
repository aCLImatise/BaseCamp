version 1.0

task DqcInitialSetupsh {
  command <<<
    dqc_initial_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}