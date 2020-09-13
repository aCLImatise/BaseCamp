version 1.0

task UniqueFilter {
  command <<<
    uniqueFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}