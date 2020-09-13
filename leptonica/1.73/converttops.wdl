version 1.0

task Converttops {
  command <<<
    converttops
  >>>
  output {
    File out_stdout = stdout()
  }
}