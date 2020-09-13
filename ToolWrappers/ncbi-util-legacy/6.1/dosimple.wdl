version 1.0

task Dosimple {
  command <<<
    dosimple
  >>>
  output {
    File out_stdout = stdout()
  }
}