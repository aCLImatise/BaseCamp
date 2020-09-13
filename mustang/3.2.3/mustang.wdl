version 1.0

task Mustang {
  command <<<
    mustang
  >>>
  output {
    File out_stdout = stdout()
  }
}