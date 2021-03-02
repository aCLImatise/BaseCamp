version 1.0

task Squizz {
  input {
    Boolean? detect_alignment_formats
    Boolean? detect_sequence_formats
    String? convert_format_fmt
    String? assume_format_fmt
    Boolean? list_supported_formats
    Boolean? count_report_entries
    Boolean? disable_strict_format
    Boolean? display_version_information
    File var_file
  }
  command <<<
    squizz \
      ~{var_file} \
      ~{if (detect_alignment_formats) then "-A" else ""} \
      ~{if (detect_sequence_formats) then "-S" else ""} \
      ~{if defined(convert_format_fmt) then ("-c " +  '"' + convert_format_fmt + '"') else ""} \
      ~{if defined(assume_format_fmt) then ("-f " +  '"' + assume_format_fmt + '"') else ""} \
      ~{if (list_supported_formats) then "-l" else ""} \
      ~{if (count_report_entries) then "-n" else ""} \
      ~{if (disable_strict_format) then "-s" else ""} \
      ~{if (display_version_information) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detect_alignment_formats: "... Detect alignment formats only."
    detect_sequence_formats: "... Detect sequence formats only."
    convert_format_fmt: "... Convert into format <fmt>."
    assume_format_fmt: "... Assume input format <fmt>."
    list_supported_formats: "... List all supported formats."
    count_report_entries: "... Count and report entries number."
    disable_strict_format: "... Disable strict format checks."
    display_version_information: "... Display version information and exit."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}