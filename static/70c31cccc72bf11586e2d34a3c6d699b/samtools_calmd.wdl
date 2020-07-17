version 1.0

task SamtoolsCalmd {
  input {
    Boolean? change_identical_bases
    Boolean? uncompressed_bam_output
    Boolean? compressed_bam_output
    Boolean? input_sam_header
    Boolean? modify_quality_string
    Boolean? compute_bq_tag
    Boolean? extended_baq_better
    Boolean? eu_brs
    String sam_tools
    String fill_md
    String aln_dot_bam
    String ref_dot_fast_a
  }
  command <<<
    samtools calmd \
      ~{sam_tools} \
      ~{fill_md} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{true="-e" false="" change_identical_bases} \
      ~{true="-u" false="" uncompressed_bam_output} \
      ~{true="-b" false="" compressed_bam_output} \
      ~{true="-S" false="" input_sam_header} \
      ~{true="-A" false="" modify_quality_string} \
      ~{true="-r" false="" compute_bq_tag} \
      ~{true="-E" false="" extended_baq_better} \
      ~{true="-eubrS" false="" eu_brs}
  >>>
  parameter_meta {
    change_identical_bases: "change identical bases to '='"
    uncompressed_bam_output: "uncompressed BAM output (for piping)"
    compressed_bam_output: "compressed BAM output"
    input_sam_header: "the input is SAM with header"
    modify_quality_string: "modify the quality string"
    compute_bq_tag: "compute the BQ tag (without -A) or cap baseQ by BAQ (with -A)"
    extended_baq_better: "extended BAQ for better sensitivity but lower specificity"
    eu_brs: ""
    sam_tools: ""
    fill_md: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
}