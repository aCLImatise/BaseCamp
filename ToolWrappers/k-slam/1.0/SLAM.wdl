version 1.0

task SLAM {
  input {
    File? db
    Int? min_alignment_score
    Float? score_fraction_threshold
    Int? match_score
    Int? mismatch_penalty
    Int? gap_open
    Int? gap_extend
    Int? num_reads
    File? output_file
    File? sam_file
    Int? num_alignments
    Boolean? just_align
    String align
    File samxa_only_output
    String meta_genomics
  }
  command <<<
    SLAM \
      ~{align} \
      ~{samxa_only_output} \
      ~{meta_genomics} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(min_alignment_score) then ("--min-alignment-score " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(score_fraction_threshold) then ("--score-fraction-threshold " +  '"' + score_fraction_threshold + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch-penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(sam_file) then ("--sam-file " +  '"' + sam_file + '"') else ""} \
      ~{if defined(num_alignments) then ("--num-alignments " +  '"' + num_alignments + '"') else ""} \
      ~{if (just_align) then "--just-align" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "SLAM database file which reads will be\\naligned against"
    min_alignment_score: "(=0)        alignment score cutoff"
    score_fraction_threshold: "(=0.94999999999999996)\\nscreen alignments with scores <\\nthis*top score"
    match_score: "(=2)                match score"
    mismatch_penalty: "(=3)           mismatch penalty (positive)"
    gap_open: "(=5)                   gap opening penalty (positive)"
    gap_extend: "(=2)                 gap extend penalty (positive)"
    num_reads: "(=4294967295)         Number of reads from R1/R2 File to"
    output_file: "write to this file instead of stdout"
    sam_file: "write SAM output to this file"
    num_alignments: "(=10)            Number of alignments to report in SAM"
    just_align: "only perform alignments, not"
    align: "--num-reads-at-once arg (=10000000)   Reduce RAM usage by only analysing "
    samxa_only_output: "--sam-xa                              only output primary alignment lines, "
    meta_genomics: "--no-pseudo-assembly                  do not link alignments together"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_sam_file = "${in_sam_file}"
  }
}