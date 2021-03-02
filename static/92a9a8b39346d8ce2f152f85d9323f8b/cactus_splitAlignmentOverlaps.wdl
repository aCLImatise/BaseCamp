version 1.0

task CactusSplitAlignmentOverlaps {
  command <<<
    cactus_splitAlignmentOverlaps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}