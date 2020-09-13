version 1.0

task Rgthint {
  command <<<
    rgt_hint
  >>>
  output {
    File out_stdout = stdout()
  }
}