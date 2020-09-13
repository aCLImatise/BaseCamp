version 1.0

task LumpyFilter {
  command <<<
    lumpy_filter
  >>>
  output {
    File out_stdout = stdout()
  }
}