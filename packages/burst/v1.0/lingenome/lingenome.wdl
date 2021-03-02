version 1.0

task Lingenome {
  command <<<
    lingenome
  >>>
  runtime {
    docker: "quay.io/biocontainers/burst:v1.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}