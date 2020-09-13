version 1.0

task Scounts {
  command <<<
    scounts
  >>>
  output {
    File out_stdout = stdout()
  }
}