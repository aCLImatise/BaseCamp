version 1.0

task Penny {
  command <<<
    penny
  >>>
  output {
    File out_stdout = stdout()
  }
}