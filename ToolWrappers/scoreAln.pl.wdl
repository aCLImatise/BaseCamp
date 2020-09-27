version 1.0

task ScoreAlnpl {
  input {
    Boolean? an_alignment_file
    Boolean? the_format_alignment
    Boolean? detailed_output_details
    Boolean? which_score_
  }
  command <<<
    scoreAln_pl \
      ~{if (an_alignment_file) then "-i" else ""} \
      ~{if (the_format_alignment) then "-f" else ""} \
      ~{if (detailed_output_details) then "-o" else ""} \
      ~{if (which_score_) then "-s" else ""}
  >>>
  parameter_meta {
    an_alignment_file: "An alignment file                       [REQUIRED]"
    the_format_alignment: "The format of the alignment             [REQUIRED]\\n[CLUSTALW|TBA|MAF]"
    detailed_output_details: "Detailed output (1) or no details, only the score (0)"
    which_score_: "Which score                             [REQUIRED]\\n[sop|mpi]"
  }
  output {
    File out_stdout = stdout()
  }
}