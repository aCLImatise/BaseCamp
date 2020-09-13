version 1.0

task Momo {
  command <<<
    momo
  >>>
  output {
    File out_stdout = stdout()
  }
}