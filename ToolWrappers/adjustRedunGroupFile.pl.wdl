version 1.0

task AdjustRedunGroupFilepl {
  command <<<
    adjustRedunGroupFile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}