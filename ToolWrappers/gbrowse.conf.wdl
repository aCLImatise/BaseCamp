version 1.0

task Gbrowseconf {
  command <<<
    gbrowse_conf
  >>>
  output {
    File out_stdout = stdout()
  }
}