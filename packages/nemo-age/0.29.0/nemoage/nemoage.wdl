version 1.0

task Nemoage {
  command <<<
    nemoage
  >>>
  runtime {
    docker: "quay.io/biocontainers/nemo-age:0.29.0--h9e03d57_0"
  }
  output {
    File out_stdout = stdout()
  }
}