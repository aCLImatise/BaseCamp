version 1.0

task Popscle {
  command <<<
    popscle
  >>>
  output {
    File out_stdout = stdout()
  }
}