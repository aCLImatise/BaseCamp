version 1.0

task LICENSE {
  command <<<
    LICENSE
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}