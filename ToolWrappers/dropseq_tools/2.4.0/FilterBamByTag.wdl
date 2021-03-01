version 1.0

task FilterBamByTag {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String tagstring_bam_tag
    String match_dot
    String passingreadthresholddouble_set_value
  }
  command <<<
    FilterBamByTag \
      ~{tagstring_bam_tag} \
      ~{match_dot} \
      ~{passingreadthresholddouble_set_value} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dropseq_tools:2.4.0--0"
  }
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    tagstring_bam_tag: "TAG=String                    The BAM tag to filter on.  Required. "
    match_dot: "For example, if the allowed value is A and the tag is A,B, the read would match. "
    passingreadthresholddouble_set_value: "PASSING_READ_THRESHOLD=Double If set to a a value < 1, the program will fail if fewer than this fraction of reads pass"
  }
  output {
    File out_stdout = stdout()
  }
}