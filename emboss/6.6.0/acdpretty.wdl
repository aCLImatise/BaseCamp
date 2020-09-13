version 1.0

task Acdpretty {
  command <<<
    acdpretty
  >>>
  output {
    File out_stdout = stdout()
  }
}