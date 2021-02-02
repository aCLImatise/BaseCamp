version 1.0

task Rop {
  command <<<
    rop
  >>>
  output {
    File out_stdout = stdout()
  }
}