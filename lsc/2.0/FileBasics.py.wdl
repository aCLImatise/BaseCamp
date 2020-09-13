version 1.0

task FileBasicspy {
  command <<<
    FileBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}