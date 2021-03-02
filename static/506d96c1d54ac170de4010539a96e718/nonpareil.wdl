version 1.0

task Nonpareil {
  command <<<
    nonpareil
  >>>
  runtime {
    docker: "quay.io/biocontainers/nonpareil:3.3.4--r40hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}