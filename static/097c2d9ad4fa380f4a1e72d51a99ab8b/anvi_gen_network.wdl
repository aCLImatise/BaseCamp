version 1.0

task AnviGenNetwork {
  input {
    Boolean? list_annotation_sources
    String? p
    String? c
  }
  command <<<
    anvi-gen-network \
      ~{true="--list-annotation-sources" false="" list_annotation_sources} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    list_annotation_sources: "List available functional annotation sources."
    p: ""
    c: ""
  }
}