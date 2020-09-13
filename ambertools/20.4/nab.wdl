version 1.0

task Nab {
  command <<<
    nab
  >>>
  output {
    File out_stdout = stdout()
  }
}