version 1.0

task OptInitAndTermProbspl {
  command <<<
    opt_init_and_term_probs_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  output {
    File out_stdout = stdout()
  }
}