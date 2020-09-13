version 1.0

task BedItemOverlapCount {
  command <<<
    bedItemOverlapCount
  >>>
  output {
    File out_stdout = stdout()
  }
}