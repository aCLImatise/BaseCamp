version 1.0

task IgvJasmine {
  command <<<
    igv_jasmine
  >>>
  runtime {
    docker: "quay.io/biocontainers/jasminesv:1.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}