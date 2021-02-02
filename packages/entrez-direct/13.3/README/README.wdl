version 1.0

task README {
  command <<<
    README
  >>>
  output {
    File out_stdout = stdout()
  }
}