version 1.0

task Fastareformat {
  command <<<
    fastareformat
  >>>
  output {
    File out_stdout = stdout()
  }
}