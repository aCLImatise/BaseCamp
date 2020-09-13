version 1.0

task Xcfinfo {
  input {
    Boolean? show_version_version
    Boolean? show_progress_messages
    Boolean? input_bzip_compressed
    File? use_separate_groups
    Boolean? input_gzip_compressed
    String? use__unpack
    Boolean? use_utf_
    File filename_dot_xcf
  }
  command <<<
    xcfinfo \
      ~{filename_dot_xcf} \
      ~{if (show_version_version) then "-V" else ""} \
      ~{if (show_progress_messages) then "-v" else ""} \
      ~{if (input_bzip_compressed) then "-j" else ""} \
      ~{if defined(use_separate_groups) then ("-p " +  '"' + use_separate_groups + '"') else ""} \
      ~{if (input_gzip_compressed) then "-z" else ""} \
      ~{if defined(use__unpack) then ("-Z " +  '"' + use__unpack + '"') else ""} \
      ~{if (use_utf_) then "-u" else ""}
  >>>
  parameter_meta {
    show_version_version: "show version (--version)"
    show_progress_messages: "show progress messages (--verbose)"
    input_bzip_compressed: "input is bzip2 compressed (--bzip)"
    use_separate_groups: "use 'string' to separate the groups in the paths (--path-separator)"
    input_gzip_compressed: "input is gzip compressed (--gzip)"
    use__unpack: "use 'command' to decompress input (--unpack)"
    use_utf_: "use UTF-8 for layer names (--utf8)"
    filename_dot_xcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}