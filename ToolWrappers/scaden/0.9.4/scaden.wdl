version 1.0

task Scaden {
  command <<<
    scaden
  >>>
  output {
    File out_stdout = stdout()
  }
}