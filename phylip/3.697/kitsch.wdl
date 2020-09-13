version 1.0

task Kitsch {
  command <<<
    kitsch
  >>>
  output {
    File out_stdout = stdout()
  }
}