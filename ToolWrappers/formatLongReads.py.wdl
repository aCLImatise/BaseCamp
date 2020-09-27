version 1.0

task FormatLongReadspy {
  command <<<
    formatLongReads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}