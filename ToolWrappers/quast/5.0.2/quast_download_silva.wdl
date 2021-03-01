version 1.0

task Quastdownloadsilva {
  command <<<
    quast_download_silva
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}