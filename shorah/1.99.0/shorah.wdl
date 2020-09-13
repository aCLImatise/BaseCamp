version 1.0

task Shorah {
  command <<<
    shorah
  >>>
  output {
    File out_stdout = stdout()
  }
}