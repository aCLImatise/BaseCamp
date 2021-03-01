version 1.0

task BlastSelfAlignmentFilterpl {
  command <<<
    blast_self_alignment_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}