version 1.0

task Bammaskflags {
  command <<<
    bammaskflags
  >>>
  output {
    File out_stdout = stdout()
  }
}