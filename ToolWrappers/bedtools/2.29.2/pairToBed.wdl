version 1.0

task PairToBed {
  input {
    Boolean? a_bam
    Boolean? ub_am
    Boolean? bed_pe
    Boolean? ed
    Boolean? minimum_overlap_required
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? type
    String? b
    String? a
    String either
    String both
    String xor
    String is_pan
    String o_span
    String not_i_span
    String no_to_span
  }
  command <<<
    pairToBed \
      ~{either} \
      ~{both} \
      ~{xor} \
      ~{is_pan} \
      ~{o_span} \
      ~{not_i_span} \
      ~{no_to_span} \
      ~{if (a_bam) then "-abam" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if (bed_pe) then "-bedpe" else ""} \
      ~{if (ed) then "-ed" else ""} \
      ~{if (minimum_overlap_required) then "-f" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_bam: "The A input file is in BAM format.  Output will be BAM as well. Replaces -a.\\n- Requires BAM to be grouped or sorted by query."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM.\\nis to write output in BAM when using -abam."
    bed_pe: "When using BAM input (-abam), write output as BEDPE. The default\\nis to write output in BAM when using -abam."
    ed: "Use BAM total edit distance (NM tag) for BEDPE score.\\n- Default for BEDPE is to use the minimum of\\nof the two mapping qualities for the pair.\\n- When -ed is used the total edit distance\\nfrom the two mates is reported as the score."
    minimum_overlap_required: "Minimum overlap required as fraction of A (e.g. 0.05).\\nDefault is 1E-9 (effectively 1bp)."
    require_same_strandedness: "Require same strandedness when finding overlaps.\\nDefault is to ignore stand.\\nNot applicable with -type inspan or -type outspan."
    require_different_strandedness: "Require different strandedness when finding overlaps.\\nDefault is to ignore stand.\\nNot applicable with -type inspan or -type outspan."
    type: "Approach to reporting overlaps between BEDPE and BED."
    b: ""
    a: ""
    either: "Report overlaps if either end of A overlaps B.\\n- Default."
    both: "Report overlaps if both ends of A overlap  B."
    xor: "Report overlaps if one and only one end of A overlaps B."
    is_pan: "Report overlaps between [end1, start2] of A and B.\\n- Note: If chrom1 <> chrom2, entry is ignored."
    o_span: "Report overlaps between [start1, end2] of A and B.\\n- Note: If chrom1 <> chrom2, entry is ignored."
    not_i_span: "Report A if ispan of A doesn't overlap B.\\n- Note: If chrom1 <> chrom2, entry is ignored."
    no_to_span: "Report A if ospan of A doesn't overlap B.\\n- Note: If chrom1 <> chrom2, entry is ignored."
  }
  output {
    File out_stdout = stdout()
  }
}