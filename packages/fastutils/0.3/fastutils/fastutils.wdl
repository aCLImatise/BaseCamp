version 1.0

task Fastutils {
  command <<<
    fastutils
  >>>
  output {
    File out_stdout = stdout()
  }
}