version 1.0

task Icaruspy {
  command <<<
    icarus_py
  >>>
  output {
    File out_stdout = stdout()
  }
}