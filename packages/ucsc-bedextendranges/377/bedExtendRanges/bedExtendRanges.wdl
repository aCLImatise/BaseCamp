version 1.0

task BedExtendRanges {
  command <<<
    bedExtendRanges
  >>>
  output {
    File out_stdout = stdout()
  }
}