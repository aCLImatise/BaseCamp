version 1.0

task Squizz {
  input {
    Boolean? detect_alignment_formats
    Boolean? detect_sequence_formats
    String? convert_format_fmt
    String? assume_format_fmt
    Boolean? list_supported_formats
    Boolean? count_report_number
    Boolean? disable_strict_format
    Boolean? display_version_information
    File file
  }
  command <<<
    squizz \
      ~{file} \
      ~{true="-A" false="" detect_alignment_formats} \
      ~{true="-S" false="" detect_sequence_formats} \
      ~{if defined(convert_format_fmt) then ("-c " +  '"' + convert_format_fmt + '"') else ""} \
      ~{if defined(assume_format_fmt) then ("-f " +  '"' + assume_format_fmt + '"') else ""} \
      ~{true="-l" false="" list_supported_formats} \
      ~{true="-n" false="" count_report_number} \
      ~{true="-s" false="" disable_strict_format} \
      ~{true="-v" false="" display_version_information}
  >>>
  parameter_meta {
    detect_alignment_formats: "... Detect alignment formats only."
    detect_sequence_formats: "... Detect sequence formats only."
    convert_format_fmt: "... Convert into format <fmt>."
    assume_format_fmt: "... Assume input format <fmt>."
    list_supported_formats: "... List all supported formats."
    count_report_number: "... Count and report entries number."
    disable_strict_format: "... Disable strict format checks."
    display_version_information: "... Display version information and exit."
    file: ""
  }
}