version 1.0

task Tablet {
  command <<<
    tablet
  >>>
  output {
    File out_stdout = stdout()
  }
}