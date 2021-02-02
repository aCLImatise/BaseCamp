version 1.0

task Tadtool {
  command <<<
    tadtool
  >>>
  output {
    File out_stdout = stdout()
  }
}