version 1.0

task CactusBlastSortAlignments {
  command <<<
    cactus_blast_sortAlignments
  >>>
  output {
    File out_stdout = stdout()
  }
}