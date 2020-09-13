version 1.0

task Fastool {
  command <<<
    fastool
  >>>
  output {
    File out_stdout = stdout()
  }
}