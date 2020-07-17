version 1.0

task LofreqAlnqual {
  input {
    Boolean? bam_output_sam
    Boolean? uncompressed_bam_output
    Boolean? input_sam_header
    Boolean? use_default_baq
    Boolean? compute_base_alignment_qualities
    Boolean? compute_indel_alignment_qualities
    Boolean? recompute_ie_overwrite
    String aln_dot_bam
    String ref_dot_fast_a
  }
  command <<<
    lofreq alnqual \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{true="-b" false="" bam_output_sam} \
      ~{true="-u" false="" uncompressed_bam_output} \
      ~{true="-S" false="" input_sam_header} \
      ~{true="-e" false="" use_default_baq} \
      ~{true="-B" false="" compute_base_alignment_qualities} \
      ~{true="-A" false="" compute_indel_alignment_qualities} \
      ~{true="-r" false="" recompute_ie_overwrite}
  >>>
  parameter_meta {
    bam_output_sam: "BAM output (instead of SAM)"
    uncompressed_bam_output: "Uncompressed BAM output (for piping)"
    input_sam_header: "The input is SAM with header"
    use_default_baq: "Use default instead of extended BAQ (the latter gives better sensitivity but lower specificity)"
    compute_base_alignment_qualities: "Don't compute base alignment qualities"
    compute_indel_alignment_qualities: "Don't compute indel alignment qualities"
    recompute_ie_overwrite: "Recompute i.e. overwrite existing values"
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
}