version 1.0

task Picard {
  command <<<
    picard
  >>>
  output {
    File out_stdout = stdout()
  }
}