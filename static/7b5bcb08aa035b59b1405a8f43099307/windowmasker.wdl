version 1.0

task Windowmasker {
  command <<<
    windowmasker
  >>>
  output {
    File out_stdout = stdout()
  }
}