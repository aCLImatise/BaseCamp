version 1.0

task Accnatatime {
  command <<<
    accn_at_a_time
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  output {
    File out_stdout = stdout()
  }
}