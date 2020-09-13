version 1.0

task Lorikeet {
  command <<<
    lorikeet
  >>>
  output {
    File out_stdout = stdout()
  }
}