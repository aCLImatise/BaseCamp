version 1.0

task BedIntersect {
  command <<<
    bedIntersect
  >>>
  output {
    File out_stdout = stdout()
  }
}