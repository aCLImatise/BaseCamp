version 1.0

task Sd {
  command <<<
    sd
  >>>
  output {
    File out_stdout = stdout()
  }
}