version 1.0

task GetCovered {
  command <<<
    get_covered
  >>>
  output {
    File out_stdout = stdout()
  }
}