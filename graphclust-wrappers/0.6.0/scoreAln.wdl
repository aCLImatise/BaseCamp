version 1.0

task ScoreAln.pl {
  input {
    Boolean? an_alignment_file
    Boolean? the_format_alignment
    Boolean? detailed_output_details
    Boolean? which_score_
    String perl
  }
  command <<<
    scoreAln.pl \
      ~{perl} \
      ~{true="-i" false="" an_alignment_file} \
      ~{true="-f" false="" the_format_alignment} \
      ~{true="-o" false="" detailed_output_details} \
      ~{true="-s" false="" which_score_}
  >>>
  parameter_meta {
    an_alignment_file: "An alignment file                       [REQUIRED]"
    the_format_alignment: "The format of the alignment             [REQUIRED] [CLUSTALW|TBA|MAF]"
    detailed_output_details: "Detailed output (1) or no details, only the score (0)"
    which_score_: "Which score                             [REQUIRED] [sop|mpi]"
    perl: ""
  }
}