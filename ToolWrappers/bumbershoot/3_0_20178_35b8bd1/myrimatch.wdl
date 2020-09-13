version 1.0

task Myrimatch {
  command <<<
    myrimatch
  >>>
  output {
    File out_stdout = stdout()
  }
}