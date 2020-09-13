version 1.0

task Bispy {
  command <<<
    bis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}