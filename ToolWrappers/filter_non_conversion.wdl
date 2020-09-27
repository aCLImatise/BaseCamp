version 1.0

task FilterNonConversion {
  command <<<
    filter_non_conversion
  >>>
  output {
    File out_stdout = stdout()
  }
}