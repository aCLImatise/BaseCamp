version 1.0

task BedRestrictToPositions {
  command <<<
    bedRestrictToPositions
  >>>
  output {
    File out_stdout = stdout()
  }
}