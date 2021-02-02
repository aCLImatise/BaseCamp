version 1.0

task NavToMapBasicspy {
  command <<<
    NavToMapBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}