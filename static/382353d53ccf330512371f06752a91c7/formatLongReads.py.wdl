version 1.0

task FormatLongReadspy {
  command <<<
    formatLongReads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}