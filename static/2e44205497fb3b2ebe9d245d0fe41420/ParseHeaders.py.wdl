version 1.0

task ParseHeaderspy {
  command <<<
    ParseHeaders_py
  >>>
  output {
    File out_stdout = stdout()
  }
}