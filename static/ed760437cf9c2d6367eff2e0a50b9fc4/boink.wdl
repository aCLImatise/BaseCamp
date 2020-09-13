version 1.0

task Boink {
  command <<<
    boink
  >>>
  output {
    File out_stdout = stdout()
  }
}