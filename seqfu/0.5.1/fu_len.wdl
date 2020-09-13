version 1.0

task Fulen {
  command <<<
    fu_len
  >>>
  output {
    File out_stdout = stdout()
  }
}