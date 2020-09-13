version 1.0

task CbImportSeurat {
  command <<<
    cbImportSeurat
  >>>
  output {
    File out_stdout = stdout()
  }
}