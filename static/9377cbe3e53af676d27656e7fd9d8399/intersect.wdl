version 1.0

task Intersect {
  command <<<
    intersect
  >>>
  output {
    File out_stdout = stdout()
  }
}