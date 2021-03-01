version 1.0

task CramFilter {
  input {
    Int? only_emit_containers
    Int? limit_output_containers
    Boolean? drop_quality_strings
    String? discard_comma_list
    String? keep_only_types
    String in_dot_cram
    String out_dot_cram
  }
  command <<<
    cram_filter \
      ~{in_dot_cram} \
      ~{out_dot_cram} \
      ~{if defined(only_emit_containers) then ("-n " +  '"' + only_emit_containers + '"') else ""} \
      ~{if defined(limit_output_containers) then ("-r " +  '"' + limit_output_containers + '"') else ""} \
      ~{if (drop_quality_strings) then "-q" else ""} \
      ~{if defined(discard_comma_list) then ("-t " +  '"' + discard_comma_list + '"') else ""} \
      ~{if defined(keep_only_types) then ("-T " +  '"' + keep_only_types + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_emit_containers: "[-end]    Only emit containers 'start' to 'end' inclusive.\\n'-n 100' is equivalent to '-n 100-100'."
    limit_output_containers: "Limit output to containers overlapping 'range'.\\n'-r chr1' matches all of chr1.\\n'-r chr1:1000' is equivalent to '-r chr1:1000-1000'."
    drop_quality_strings: "Drop quality strings (CRAM QS)."
    discard_comma_list: "Discard comma separated list of tag types."
    keep_only_types: "Keep only aux. tag types in the specified list."
    in_dot_cram: ""
    out_dot_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}