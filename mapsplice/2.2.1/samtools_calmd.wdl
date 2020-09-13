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
      ~{if (change_identical_bases) then "-e" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (compressed_bam_output) then "-b" else ""} \
      ~{if (input_sam_header) then "-S" else ""} \
      ~{if (readindependent_local_realignment) then "-r" else ""} \
      ~{if (eu_brs) then "-eubrS" else ""}
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
  output {
    File out_stdout = stdout()
  }
}