version 1.0

task Emtoolspy {
  command <<<
    emtools_py
  >>>
  output {
    File out_stdout = stdout()
  }
}