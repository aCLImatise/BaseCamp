version 1.0

task NavToMapBasicspy {
  command <<<
    NavToMapBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}