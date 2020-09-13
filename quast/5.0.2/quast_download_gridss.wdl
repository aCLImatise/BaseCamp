version 1.0

task Quastdownloadgridss {
  command <<<
    quast_download_gridss
  >>>
  output {
    File out_stdout = stdout()
  }
}