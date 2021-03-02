version 1.0

task Emtoolspy {
  command <<<
    emtools_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}