version 1.0

task BedRemoveOverlap {
  command <<<
    bedRemoveOverlap
  >>>
  output {
    File out_stdout = stdout()
  }
}