version 1.0

task Bamfilterflags {
  command <<<
    bamfilterflags
  >>>
  output {
    File out_stdout = stdout()
  }
}