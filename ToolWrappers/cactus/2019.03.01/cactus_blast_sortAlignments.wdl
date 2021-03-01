version 1.0

task CactusBlastSortAlignments {
  command <<<
    cactus_blast_sortAlignments
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}