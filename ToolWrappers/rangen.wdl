version 1.0

task Rangen {
  command <<<
    rangen
  >>>
  output {
    File out_stdout = stdout()
  }
}