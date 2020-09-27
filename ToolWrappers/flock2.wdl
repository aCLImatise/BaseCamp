version 1.0

task Flock2 {
  command <<<
    flock2
  >>>
  output {
    File out_stdout = stdout()
  }
}