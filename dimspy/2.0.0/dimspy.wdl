version 1.0

task Dimspy {
  command <<<
    dimspy
  >>>
  output {
    File out_stdout = stdout()
  }
}