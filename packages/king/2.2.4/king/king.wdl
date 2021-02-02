version 1.0

task King {
  command <<<
    king
  >>>
  output {
    File out_stdout = stdout()
  }
}