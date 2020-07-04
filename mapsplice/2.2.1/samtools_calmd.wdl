version 1.0

task SamtoolsCalmd {
  input {
    Boolean? change_identical_bases
    Boolean? uncompressed_bam_output
    Boolean? compressed_bam_output
    Boolean? input_sam_header
    Boolean? readindependent_local_realignment
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
      ~{true="-r" false="" readindependent_local_realignment} \
      ~{true="-eubrS" false="" eu_brs}
  >>>
  parameter_meta {
    change_identical_bases: "change identical bases to '='"
    uncompressed_bam_output: "uncompressed BAM output (for piping)"
    compressed_bam_output: "compressed BAM output"
    input_sam_header: "the input is SAM with header"
    readindependent_local_realignment: "read-independent local realignment"
    eu_brs: ""
    sam_tools: ""
    fill_md: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
}