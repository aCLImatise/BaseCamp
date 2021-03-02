version 1.0

task Samtools0118Calmd {
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
    samtools_0_1_18 calmd \
      ~{sam_tools} \
      ~{fill_md} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if (change_identical_bases) then "-e" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (compressed_bam_output) then "-b" else ""} \
      ~{if (input_sam_header) then "-S" else ""} \
      ~{if (modify_quality_string) then "-A" else ""} \
      ~{if (compute_bq_tag) then "-r" else ""} \
      ~{if (extended_baq_better) then "-E" else ""} \
      ~{if (eu_brs) then "-eubrS" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}