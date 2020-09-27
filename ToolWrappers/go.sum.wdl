version 1.0

task Gosum {
  command <<<
    go_sum
  >>>
  output {
    File out_stdout = stdout()
  }
}