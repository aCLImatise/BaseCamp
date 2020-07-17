version 1.0

task Xcfinfo {
  input {
    Boolean? show_version_
    Boolean? show_progress_messages
    Boolean? input_bzip_compressed
    String? use_separate_groups
    Boolean? input_gzip_compressed
    String? use_decompress_input
    Boolean? use_utf_
    File filename_dot_xcf
  }
  command <<<
    xcfinfo \
      ~{filename_dot_xcf} \
      ~{true="-V" false="" show_version_} \
      ~{true="-v" false="" show_progress_messages} \
      ~{true="-j" false="" input_bzip_compressed} \
      ~{if defined(use_separate_groups) then ("-p " +  '"' + use_separate_groups + '"') else ""} \
      ~{true="-z" false="" input_gzip_compressed} \
      ~{if defined(use_decompress_input) then ("-Z " +  '"' + use_decompress_input + '"') else ""} \
      ~{true="-u" false="" use_utf_}
  >>>
  parameter_meta {
    show_version_: "show version (--version)"
    show_progress_messages: "show progress messages (--verbose)"
    input_bzip_compressed: "input is bzip2 compressed (--bzip)"
    use_separate_groups: "use 'string' to separate the groups in the paths (--path-separator)"
    input_gzip_compressed: "input is gzip compressed (--gzip)"
    use_decompress_input: "use 'command' to decompress input (--unpack)"
    use_utf_: "use UTF-8 for layer names (--utf8)"
    filename_dot_xcf: ""
  }
}