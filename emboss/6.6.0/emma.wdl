version 1.0

task Emma {
  input {
    Boolean? only_d_end
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? gap_dist
    Boolean? max_div
    String similarity
  }
  command <<<
    emma \
      ~{similarity} \
      ~{if (only_d_end) then "-onlydend" else ""} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""} \
      ~{if (gap_dist) then "-gapdist" else ""} \
      ~{if (max_div) then "-maxdiv" else ""}
  >>>
  parameter_meta {
    only_d_end: "toggle     [N] Only produce dendrogram file"
    gap_open: "float      [10.0] The penalty for opening a gap in the\\nalignment. Increasing the gap opening\\npenalty will make gaps less frequent.\\n(Positive floating point number)"
    gap_extend: "float      [5.0] The penalty for extending a gap by 1\\nresidue. Increasing the gap extension\\npenalty will make gaps shorter. Terminal\\ngaps are not penalised. (Positive floating\\npoint number)"
    gap_dist: "integer    [8] Gap separation distance: tries to\\ndecrease the chances of gaps being too close\\nto each other. Gaps that are less than this\\ndistance apart are penalised more than\\nother gaps. This does not prevent close\\ngaps; it makes them less frequent, promoting\\na block-like appearance of the alignment.\\n(Positive integer)"
    max_div: "integer    [30] This switch, delays the alignment of\\nthe most distantly related sequences until\\nafter the most closely related sequences\\nhave been aligned. The setting shows the\\npercent identity level required to delay the\\naddition of a sequence; sequences that are\\nless identical than this level to any other\\nsequences will be aligned later. (Integer\\nfrom 0 to 100)"
    similarity: "scores: suppresses percentage score"
  }
  output {
    File out_stdout = stdout()
  }
}