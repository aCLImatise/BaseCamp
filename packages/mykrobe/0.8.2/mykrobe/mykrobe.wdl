version 1.0

task Mykrobe {
  command <<<
    mykrobe
  >>>
  output {
    File out_stdout = stdout()
  }
}