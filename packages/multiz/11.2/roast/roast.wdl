version 1.0

task Roast {
  command <<<
    roast
  >>>
  output {
    File out_stdout = stdout()
  }
}