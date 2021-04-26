version 1.0

task CbImportSeurat {
  command <<<
    cbImportSeurat
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}