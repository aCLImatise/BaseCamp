version 1.0

task Salmon {
  command <<<
    salmon
  >>>
  output {
    File out_stdout = stdout()
  }
}