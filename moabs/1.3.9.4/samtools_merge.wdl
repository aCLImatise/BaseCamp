version 1.0

task SamtoolsMerge {
  input {
    Boolean? sort_by_read
    Boolean? attach_rg_tag
    Boolean? uncompressed_bam_output
    Boolean? overwrite_output_bam
    Boolean? compress_level
    Int? compression_level_from
    Int? at
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
      ~{true="-f" false="" overwrite_output_bam} \
      ~{true="-1" false="" compress_level} \
      ~{if defined(compression_level_from) then ("-l " +  '"' + compression_level_from + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(merge_file_specified) then ("-R " +  '"' + merge_file_specified + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{true="-nr" false="" nr}
  >>>
  parameter_meta {
    sort_by_read: "sort by read names"
    attach_rg_tag: "attach RG tag (inferred from file names)"
    uncompressed_bam_output: "uncompressed BAM output"
    overwrite_output_bam: "overwrite the output BAM if exist"
    compress_level: "compress level 1"
    compression_level_from: "compression level, from 0 to 9 [-1]"
    at: "number of BAM compression threads [0]"
    merge_file_specified: "merge file in the specified region STR [all]"
    copy_header_file: "copy the header in FILE to <out.bam> [in1.bam]"
    nr: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
}