version 1.0

task Quastdownloadgridss {
  command <<<
    quast_download_gridss
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}