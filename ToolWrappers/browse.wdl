version 1.0

task Browse {
  command <<<
    browse
  >>>
  output {
    File out_stdout = stdout()
  }
}