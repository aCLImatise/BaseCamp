version 1.0

task AnviExportFunctions {
  input {
    Boolean? list_annotation_sources
    String? c
    File? o
  }
  command <<<
    anvi-export-functions \
      ~{true="--list-annotation-sources" false="" list_annotation_sources} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    list_annotation_sources: "List available functional annotation sources."
    c: ""
    o: ""
  }
}