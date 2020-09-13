version 1.0

task Augustus2gbrowsepl {
  command <<<
    augustus2gbrowse_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}