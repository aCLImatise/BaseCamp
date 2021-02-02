version 1.0

task Svaba {
  command <<<
    svaba
  >>>
  output {
    File out_stdout = stdout()
  }
}