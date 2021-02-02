version 1.0

task Iss {
  command <<<
    iss
  >>>
  output {
    File out_stdout = stdout()
  }
}