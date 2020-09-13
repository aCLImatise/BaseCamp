version 1.0

task LengthFilter {
  command <<<
    lengthFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}