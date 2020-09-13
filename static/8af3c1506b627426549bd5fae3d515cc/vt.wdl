version 1.0

task Vt {
  command <<<
    vt
  >>>
  output {
    File out_stdout = stdout()
  }
}