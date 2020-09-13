version 1.0

task CactusSplitAlignmentOverlaps {
  command <<<
    cactus_splitAlignmentOverlaps
  >>>
  output {
    File out_stdout = stdout()
  }
}