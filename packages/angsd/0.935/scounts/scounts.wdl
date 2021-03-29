version 1.0

task Scounts {
  command <<<
    scounts
  >>>
  runtime {
    docker: "quay.io/biocontainers/angsd:0.935--hd2e4403_0"
  }
  output {
    File out_stdout = stdout()
  }
}