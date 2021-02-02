version 1.0

task Sketchy {
  command <<<
    sketchy
  >>>
  output {
    File out_stdout = stdout()
  }
}