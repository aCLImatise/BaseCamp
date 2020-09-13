version 1.0

task Clsify {
  command <<<
    clsify
  >>>
  output {
    File out_stdout = stdout()
  }
}