version 1.0

task SamtoolsMerge {
  input {
    Boolean? sort_by_read
    Boolean? attach_rg_tag
    Boolean? uncompressed_bam_output
    String? merge_file_specified
    File? copy_header_file
    Boolean? nr
    String out_dot_bam
    String in_one_dot_bam
    String in_two_dot_bam
  }
  command <<<
    samtools merge \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{true="-n" false="" sort_by_read} \
      ~{true="-r" false="" attach_rg_tag} \
      ~{true="-u" false="" uncompressed_bam_output} \
      ~{if defined(merge_file_specified) then ("-R " +  '"' + merge_file_specified + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{true="-nr" false="" nr}
  >>>
  parameter_meta {
    sort_by_read: "sort by read names"
    attach_rg_tag: "attach RG tag (inferred from file names)"
    uncompressed_bam_output: "uncompressed BAM output"
    merge_file_specified: "merge file in the specified region STR [all]"
    copy_header_file: "copy the header in FILE to <out.bam> [in1.bam]"
    nr: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
}