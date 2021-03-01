version 1.0

task FilterPEReadspy {
  command <<<
    FilterPEReads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}