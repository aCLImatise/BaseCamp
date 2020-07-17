version 1.0

task WhatshapHaplotag {
  input {
    String? output_file_omitted
    String? reference
    Boolean? ignore_linked_read
    String? linked_read_distance_cut_off
    Boolean? ignore_read_groups
    String? sample
    String vcf
    String alignments
  }
  command <<<
    whatshap haplotag \
      ~{vcf} \
      ~{alignments} \
      ~{if defined(output_file_omitted) then ("--output " +  '"' + output_file_omitted + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--ignore-linked-read" false="" ignore_linked_read} \
      ~{if defined(linked_read_distance_cut_off) then ("--linked-read-distance-cutoff " +  '"' + linked_read_distance_cut_off + '"') else ""} \
      ~{true="--ignore-read-groups" false="" ignore_read_groups} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    output_file_omitted: "Output file. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through re-alignment. If no index (.fai) exists, it will be created"
    ignore_linked_read: "Ignore linkage information stored in BX tags of the reads."
    linked_read_distance_cut_off: "Assume reads with identical BX tags belong to different read clouds if their distance is larger than LINKEDREADDISTANCE (default: 50000)."
    ignore_read_groups: "Ignore read groups in BAM/CRAM header and assume all reads come from the same sample."
    sample: "Name of a sample to phase. If not given, all samples in the input VCF are phased. Can be used multiple times."
    vcf: "VCF file with phased variants (must be gzip-compressed and indexed)"
    alignments: "File (BAM/CRAM) with read alignments to be tagged by haplotype"
  }
}