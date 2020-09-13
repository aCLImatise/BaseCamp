version 1.0

task RefineAlignmentspl {
  command <<<
    refine_alignments_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}