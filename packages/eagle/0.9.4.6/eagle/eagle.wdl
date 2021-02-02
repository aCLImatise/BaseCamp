version 1.0

task Eagle {
  command <<<
    eagle
  >>>
  output {
    File out_stdout = stdout()
  }
}