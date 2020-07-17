version 1.0

task Pilfile.py {
  input {
    Boolean? list_supported_formats
    Boolean? show_associated_info
    Boolean? verify_file_headers
    Boolean? quiet_warn_unidentifiedmissingbroken
    String? option
    File files_dot_dot_dot
  }
  command <<<
    pilfile.py \
      ~{option} \
      ~{files_dot_dot_dot} \
      ~{true="-f" false="" list_supported_formats} \
      ~{true="-i" false="" show_associated_info} \
      ~{true="-v" false="" verify_file_headers} \
      ~{true="-q" false="" quiet_warn_unidentifiedmissingbroken}
  >>>
  parameter_meta {
    list_supported_formats: "list supported file formats"
    show_associated_info: "show associated info and tile data"
    verify_file_headers: "verify file headers"
    quiet_warn_unidentifiedmissingbroken: "quiet, don't warn for unidentified/missing/broken files"
    option: ""
    files_dot_dot_dot: ""
  }
}