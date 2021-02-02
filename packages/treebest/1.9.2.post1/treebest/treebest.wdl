version 1.0

task Treebest {
  command <<<
    treebest
  >>>
  output {
    File out_stdout = stdout()
  }
}