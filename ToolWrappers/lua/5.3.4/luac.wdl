version 1.0

task Luac {
  input {
    Boolean? list_use_l
    File? output_file_default
    Boolean? parse_only
    Boolean? strip_debug_information
    Boolean? show_version_information
    String? filenames
  }
  command <<<
    luac \
      ~{filenames} \
      ~{if (list_use_l) then "-l" else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""} \
      ~{if (parse_only) then "-p" else ""} \
      ~{if (strip_debug_information) then "-s" else ""} \
      ~{if (show_version_information) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_use_l: "list (use -l -l for full listing)"
    output_file_default: "output to file 'name' (default is \\\"luac.out\\\")"
    parse_only: "parse only"
    strip_debug_information: "strip debug information"
    show_version_information: "show version information"
    filenames: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}