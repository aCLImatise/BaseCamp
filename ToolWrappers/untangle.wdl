version 1.0

task Untangle {
  command <<<
    untangle
  >>>
  output {
    File out_stdout = stdout()
  }
}