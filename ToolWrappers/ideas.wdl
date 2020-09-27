version 1.0

task Ideas {
  command <<<
    ideas
  >>>
  output {
    File out_stdout = stdout()
  }
}