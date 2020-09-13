version 1.0

task Snns2c {
  command <<<
    snns2c
  >>>
  output {
    File out_stdout = stdout()
  }
}