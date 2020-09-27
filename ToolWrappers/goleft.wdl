version 1.0

task Goleft {
  command <<<
    goleft
  >>>
  output {
    File out_stdout = stdout()
  }
}