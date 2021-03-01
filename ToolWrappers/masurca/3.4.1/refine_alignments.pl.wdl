version 1.0

task RefineAlignmentspl {
  command <<<
    refine_alignments_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}