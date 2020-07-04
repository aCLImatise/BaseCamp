version 1.0

task BedtoolsMulticov {
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
  }
  command <<<
    bedtools multicov \
      ~{true="-bams" false="" bams} \
      ~{true="-bed" false="" bed} \
      ~{true="-split" false="" split} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{true="-f" false="" minimum_overlap_required} \
      ~{true="-r" false="" require_fraction_overlap} \
      ~{true="-q" false="" minimum_mapping_quality} \
      ~{true="-D" false="" include_duplicate_reads} \
      ~{true="-F" false="" include_failedqc_reads} \
      ~{true="-p" false="" only_count_pairs}
  >>>
  parameter_meta {
    bams: "The bam files."
    bed: "The bed file."
    split: "Treat \"split\" BAM or BED12 entries as distinct BED intervals."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B that overlap A on the _same_ strand. - By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B that overlap A on the _opposite_ strand. - By default, overlaps are reported without respect to strand."
    minimum_overlap_required: "Minimum overlap required as a fraction of each A. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    require_fraction_overlap: "Require that the fraction overlap be reciprocal for each A and B. - In other words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_ overlaps 90% of B."
    minimum_mapping_quality: "Minimum mapping quality allowed. Default is 0."
    include_duplicate_reads: "Include duplicate reads.  Default counts non-duplicates only"
    include_failedqc_reads: "Include failed-QC reads.  Default counts pass-QC reads only"
    only_count_pairs: "Only count proper pairs.  Default counts all alignments with MAPQ > -q argument, regardless of the BAM FLAG field."
  }
}