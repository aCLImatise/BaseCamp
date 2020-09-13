version 1.0

task Vipe {
  command <<<
    vipe
  >>>
  output {
    File out_stdout = stdout()
  }
}