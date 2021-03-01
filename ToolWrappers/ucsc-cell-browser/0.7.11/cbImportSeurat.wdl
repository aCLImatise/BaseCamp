version 1.0

task CbImportSeurat {
  command <<<
    cbImportSeurat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}