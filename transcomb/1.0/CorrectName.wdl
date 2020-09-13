version 1.0

task CorrectName {
  command <<<
    CorrectName
  >>>
  output {
    File out_stdout = stdout()
  }
}