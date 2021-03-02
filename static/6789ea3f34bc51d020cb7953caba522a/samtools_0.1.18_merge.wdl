version 1.0

task Samtools0118Merge {
  input {
    Boolean? sort_read_names
    Boolean? attach_tag_inferred
    Boolean? uncompressed_bam_output
    Boolean? overwrite_output_bam
    Boolean? compress_level
    File? merge_file_str
    File? copy_header_outbam
    Boolean? nr
    String sam_tools
    String merge
    String out_dot_bam
    Int in_one_dot_bam
    Int in_two_dot_bam
  }
  command <<<
    samtools_0_1_18 merge \
      ~{sam_tools} \
      ~{merge} \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{in_two_dot_bam} \
      ~{if (sort_read_names) then "-n" else ""} \
      ~{if (attach_tag_inferred) then "-r" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (overwrite_output_bam) then "-f" else ""} \
      ~{if (compress_level) then "-1" else ""} \
      ~{if defined(merge_file_str) then ("-R " +  '"' + merge_file_str + '"') else ""} \
      ~{if defined(copy_header_outbam) then ("-h " +  '"' + copy_header_outbam + '"') else ""} \
      ~{if (nr) then "-nr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_read_names: "sort by read names"
    attach_tag_inferred: "attach RG tag (inferred from file names)"
    uncompressed_bam_output: "uncompressed BAM output"
    overwrite_output_bam: "overwrite the output BAM if exist"
    compress_level: "compress level 1"
    merge_file_str: "merge file in the specified region STR [all]"
    copy_header_outbam: "copy the header in FILE to <out.bam> [in1.bam]"
    nr: ""
    sam_tools: ""
    merge: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    in_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_copy_header_outbam = "${in_copy_header_outbam}"
  }
}