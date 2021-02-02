version 1.0

task BbFilter {
  command <<<
    bbFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}