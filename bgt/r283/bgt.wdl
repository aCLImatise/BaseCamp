version 1.0

task Bgt {
  command <<<
    bgt
  >>>
  output {
    File out_stdout = stdout()
  }
}