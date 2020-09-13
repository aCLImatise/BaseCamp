version 1.0

task DateRepeats {
  command <<<
    DateRepeats
  >>>
  output {
    File out_stdout = stdout()
  }
}