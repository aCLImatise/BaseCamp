version 1.0

task SLAM {
  input {
    String? db
    String? min_alignment_score
    String? score_fraction_threshold
    String? match_score
    String? mismatch_penalty
    String? gap_open
    String? gap_extend
    String? num_reads
    String? num_reads_at_once
    String? output_file
    String? sam_file
    String? num_alignments
    Boolean? sam_x_a
    Boolean? just_align
    Boolean? no_pseudo_assembly
  }
  command <<<
    SLAM \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(min_alignment_score) then ("--min-alignment-score " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(score_fraction_threshold) then ("--score-fraction-threshold " +  '"' + score_fraction_threshold + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch-penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(num_reads_at_once) then ("--num-reads-at-once " +  '"' + num_reads_at_once + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(sam_file) then ("--sam-file " +  '"' + sam_file + '"') else ""} \
      ~{if defined(num_alignments) then ("--num-alignments " +  '"' + num_alignments + '"') else ""} \
      ~{true="--sam-xa" false="" sam_x_a} \
      ~{true="--just-align" false="" just_align} \
      ~{true="--no-pseudo-assembly" false="" no_pseudo_assembly}
  >>>
  parameter_meta {
    db: "SLAM database file which reads will be  aligned against"
    min_alignment_score: "(=0)        alignment score cutoff"
    score_fraction_threshold: "(=0.94999999999999996) screen alignments with scores <  this*top score"
    match_score: "(=2)                match score"
    mismatch_penalty: "(=3)           mismatch penalty (positive)"
    gap_open: "(=5)                   gap opening penalty (positive)"
    gap_extend: "(=2)                 gap extend penalty (positive)"
    num_reads: "(=4294967295)         Number of reads from R1/R2 File to  align"
    num_reads_at_once: "(=10000000)   Reduce RAM usage by only analysing  \"arg\" reads at once, this will increase execution time"
    output_file: "write to this file instead of stdout"
    sam_file: "write SAM output to this file"
    num_alignments: "(=10)            Number of alignments to report in SAM  file"
    sam_x_a: "only output primary alignment lines,  use XA field for secondary alignments"
    just_align: "only perform alignments, not  metagenomics"
    no_pseudo_assembly: "do not link alignments together"
  }
}