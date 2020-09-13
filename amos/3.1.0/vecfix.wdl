version 1.0

task Vecfix {
  command <<<
    vecfix
  >>>
  output {
    File out_stdout = stdout()
  }
}