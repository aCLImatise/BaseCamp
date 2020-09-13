version 1.0

task Arrive {
  command <<<
    arrive
  >>>
  output {
    File out_stdout = stdout()
  }
}