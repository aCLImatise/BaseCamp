version 1.0

task UniqueJunctionFilter {
  command <<<
    uniqueJunctionFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}