version 1.0

task Bigsi {
  command <<<
    bigsi
  >>>
  output {
    File out_stdout = stdout()
  }
}