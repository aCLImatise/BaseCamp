version 1.0

task Notab {
  command <<<
    notab
  >>>
  output {
    File out_stdout = stdout()
  }
}