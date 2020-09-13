version 1.0

task BuildG {
  command <<<
    buildG
  >>>
  output {
    File out_stdout = stdout()
  }
}