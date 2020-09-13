version 1.0

task Nab2c {
  command <<<
    nab2c
  >>>
  output {
    File out_stdout = stdout()
  }
}