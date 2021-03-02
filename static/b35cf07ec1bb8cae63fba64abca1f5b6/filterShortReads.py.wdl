version 1.0

task FilterShortReadspy {
  command <<<
    filterShortReads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}