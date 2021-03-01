version 1.0

task CbImportSeurat {
  command <<<
    cbImportSeurat
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}