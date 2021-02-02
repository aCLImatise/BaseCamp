version 1.0

task IteroCheck {
  command <<<
    itero check
  >>>
  output {
    File out_stdout = stdout()
  }
}