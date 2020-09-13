version 1.0

task DscriptMaker {
  command <<<
    dscriptMaker
  >>>
  output {
    File out_stdout = stdout()
  }
}