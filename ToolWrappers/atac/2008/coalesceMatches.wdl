version 1.0

task CoalesceMatches {
  command <<<
    coalesceMatches
  >>>
  output {
    File out_stdout = stdout()
  }
}