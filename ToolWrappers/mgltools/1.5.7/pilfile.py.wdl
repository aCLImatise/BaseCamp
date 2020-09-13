version 1.0

task Pilfilepy {
  input {
    Boolean? list_supported_formats
    Boolean? show_associated_info
    Boolean? verify_file_headers
    Boolean? quiet_warn_unidentifiedmissingbroken
  }
  command <<<
    pilfile_py \
      ~{if (list_supported_formats) then "-f" else ""} \
      ~{if (show_associated_info) then "-i" else ""} \
      ~{if (verify_file_headers) then "-v" else ""} \
      ~{if (quiet_warn_unidentifiedmissingbroken) then "-q" else ""}
  >>>
  parameter_meta {
    list_supported_formats: "list supported file formats"
    show_associated_info: "show associated info and tile data"
    verify_file_headers: "verify file headers"
    quiet_warn_unidentifiedmissingbroken: "quiet, don't warn for unidentified/missing/broken files"
  }
  output {
    File out_stdout = stdout()
  }
}