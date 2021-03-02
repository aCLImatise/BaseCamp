version 1.0

task BedtoolsBamtobed {
  input {
    Boolean? bed_pe
    Boolean? mate_one
    Boolean? be_done_two
    Boolean? split
    String? split_d
    Boolean? ed
    Boolean? tag
    Boolean? color
    Boolean? cigar
    String? i
  }
  command <<<
    bedtools bamtobed \
      ~{if (bed_pe) then "-bedpe" else ""} \
      ~{if (mate_one) then "-mate1" else ""} \
      ~{if (be_done_two) then "-bed12" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if defined(split_d) then ("-splitD " +  '"' + split_d + '"') else ""} \
      ~{if (ed) then "-ed" else ""} \
      ~{if (tag) then "-tag" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (cigar) then "-cigar" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_pe: "Write BEDPE format.\\n- Requires BAM to be grouped or sorted by query."
    mate_one: "When writing BEDPE (-bedpe) format,\\nalways report mate one as the first BEDPE \\\"block\\\"."
    be_done_two: "Write \\\"blocked\\\" BED format (aka \\\"BED12\\\"). Forces -split.\\nhttp://genome-test.cse.ucsc.edu/FAQ/FAQformat#format1"
    split: "Report \\\"split\\\" BAM alignments as separate BED entries.\\nSplits only on N CIGAR operations."
    split_d: "alignments based on N and D CIGAR operators.\\nForces -split."
    ed: "Use BAM edit distance (NM tag) for BED score.\\n- Default for BED is to use mapping quality.\\n- Default for BEDPE is to use the minimum of\\nthe two mapping qualities for the pair.\\n- When -ed is used with -bedpe, the total edit\\ndistance from the two mates is reported."
    tag: "Use other NUMERIC BAM alignment tag for BED score.\\n- Default for BED is to use mapping quality.\\nDisallowed with BEDPE output."
    color: "An R,G,B string for the color used with BED12 format.\\nDefault is (255,0,0)."
    cigar: "Add the CIGAR string to the BED entry as a 7th column."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}