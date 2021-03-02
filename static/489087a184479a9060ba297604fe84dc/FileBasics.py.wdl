version 1.0

task FileBasicspy {
  command <<<
    FileBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}