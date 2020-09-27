version 1.0

task LofreqAlnqual {
  input {
    Boolean? bam_output_instead
    Boolean? uncompressed_bam_output
    Boolean? input_sam_header
    Boolean? use_default_baq
    Boolean? compute_alignment_qualities
    Boolean? compute_indel_qualities
    Boolean? recompute_ie_overwrite
    String aln_dot_bam
    String ref_dot_fast_a
  }
  command <<<
    lofreq alnqual \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if (bam_output_instead) then "-b" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (input_sam_header) then "-S" else ""} \
      ~{if (use_default_baq) then "-e" else ""} \
      ~{if (compute_alignment_qualities) then "-B" else ""} \
      ~{if (compute_indel_qualities) then "-A" else ""} \
      ~{if (recompute_ie_overwrite) then "-r" else ""}
  >>>
  parameter_meta {
    bam_output_instead: "BAM output (instead of SAM)"
    uncompressed_bam_output: "Uncompressed BAM output (for piping)"
    input_sam_header: "The input is SAM with header"
    use_default_baq: "Use default instead of extended BAQ (the latter gives better sensitivity but lower specificity)"
    compute_alignment_qualities: "Don't compute base alignment qualities"
    compute_indel_qualities: "Don't compute indel alignment qualities"
    recompute_ie_overwrite: "Recompute i.e. overwrite existing values"
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}