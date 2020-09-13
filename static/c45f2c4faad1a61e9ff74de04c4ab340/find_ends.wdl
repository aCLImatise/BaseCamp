version 1.0

task FindEnds {
  command <<<
    find_ends
  >>>
  output {
    File out_stdout = stdout()
  }
}