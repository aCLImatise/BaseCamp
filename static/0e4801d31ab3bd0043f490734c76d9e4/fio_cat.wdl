version 1.0

task FioCat {
  input {
    File? layer
    Int? precision
    Int? indent
    Boolean? not_compact
    Boolean? no_ignore_errors
    String? dst_crs
    Boolean? no_rs
    String? bbox
    String box
  }
  command <<<
    fio cat \
      ~{box} \
      ~{if defined(layer) then ("--layer " +  '"' + layer + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (not_compact) then "--not-compact" else ""} \
      ~{if (no_ignore_errors) then "--no-ignore-errors" else ""} \
      ~{if defined(dst_crs) then ("--dst-crs " +  '"' + dst_crs + '"') else ""} \
      ~{if (no_rs) then "--no-rs" else ""} \
      ~{if defined(bbox) then ("--bbox " +  '"' + bbox + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    layer: "Input layer(s), specified as\\n'fileindex:layer` For example, '1:foo,2:bar'\\nwill concatenate layer foo from file 1 and\\nlayer bar from file 2"
    precision: "Decimal precision of coordinates."
    indent: "Indentation level for JSON output"
    not_compact: "Use compact separators (',', ':')."
    no_ignore_errors: "log errors but do not stop serialization."
    dst_crs: "Destination CRS."
    no_rs: "Use RS (0x1E) as a prefix for individual\\ntexts in a sequence as per\\nhttp://tools.ietf.org/html/draft-ietf-json-\\ntext-sequence-13 (default is False)."
    bbox: ",s,e,n                  filter for features intersecting a bounding"
    box: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}