version 1.0

task Directag {
  command <<<
    directag
  >>>
  output {
    File out_stdout = stdout()
  }
}