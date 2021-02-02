version 1.0

task Utrgff2gbrowsepl {
  command <<<
    utrgff2gbrowse_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}