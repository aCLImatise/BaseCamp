version 1.0

task PopMissingFiltersh {
  command <<<
    pop_missing_filter_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/ddocent:2.8.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}