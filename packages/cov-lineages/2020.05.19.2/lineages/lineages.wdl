version 1.0

task Lineages {
  command <<<
    lineages
  >>>
  runtime {
    docker: "quay.io/biocontainers/cov-lineages:2020.05.19.2--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}