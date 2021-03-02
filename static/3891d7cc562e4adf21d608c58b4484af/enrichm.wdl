version 1.0

task Enrichm {
  command <<<
    enrichm
  >>>
  runtime {
    docker: "quay.io/biocontainers/enrichm:0.6.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}