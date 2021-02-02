version 1.0

task Curlywhirly {
  command <<<
    curlywhirly
  >>>
  output {
    File out_stdout = stdout()
  }
}