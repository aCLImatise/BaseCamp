version 1.0

task ArrowStatus {
  command <<<
    arrow status
  >>>
  output {
    File out_stdout = stdout()
  }
}