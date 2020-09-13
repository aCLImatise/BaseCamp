version 1.0

task Quastdownloadsilva {
  command <<<
    quast_download_silva
  >>>
  output {
    File out_stdout = stdout()
  }
}