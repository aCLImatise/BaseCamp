version 1.0

task RandomJunctionFilter {
  command <<<
    randomJunctionFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}