version 1.0

task Refinem {
  command <<<
    refinem
  >>>
  output {
    File out_stdout = stdout()
  }
}