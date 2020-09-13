version 1.0

task MultiBamCov {
  input {
    Boolean? bams
    Boolean? bed
    Boolean? split
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_required
    Boolean? require_fraction_overlap
    Boolean? minimum_mapping_quality
    Boolean? include_duplicate_reads
    Boolean? include_failedqc_reads
    Boolean? only_count_pairs
    String bed_tools
    String multi_cov
  }
  command <<<
    multiBamCov \
      ~{bed_tools} \
      ~{multi_cov} \
      ~{if (bams) then "-bams" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if (minimum_overlap_required) then "-f" else ""} \
      ~{if (require_fraction_overlap) then "-r" else ""} \
      ~{if (minimum_mapping_quality) then "-q" else ""} \
      ~{if (include_duplicate_reads) then "-D" else ""} \
      ~{if (include_failedqc_reads) then "-F" else ""} \
      ~{if (only_count_pairs) then "-p" else ""}
  >>>
  parameter_meta {
    bams: "The bam files."
    bed: "The bed file."
    split: "Treat \\\"split\\\" BAM or BED12 entries as distinct BED intervals."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B\\nthat overlap A on the _same_ strand.\\n- By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B\\nthat overlap A on the _opposite_ strand.\\n- By default, overlaps are reported without respect to strand."
    minimum_overlap_required: "Minimum overlap required as a fraction of each A.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    require_fraction_overlap: "Require that the fraction overlap be reciprocal for each A and B.\\n- In other words, if -f is 0.90 and -r is used, this requires\\nthat B overlap 90% of A and A _also_ overlaps 90% of B."
    minimum_mapping_quality: "Minimum mapping quality allowed. Default is 0."
    include_duplicate_reads: "Include duplicate reads.  Default counts non-duplicates only"
    include_failedqc_reads: "Include failed-QC reads.  Default counts pass-QC reads only"
    only_count_pairs: "Only count proper pairs.  Default counts all alignments with\\nMAPQ > -q argument, regardless of the BAM FLAG field.\\n"
    bed_tools: ""
    multi_cov: ""
  }
  output {
    File out_stdout = stdout()
  }
}