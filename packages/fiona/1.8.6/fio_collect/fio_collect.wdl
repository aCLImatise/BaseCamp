version 1.0

task FioCollect {
  input {
    Int? precision
    Int? indent
    Boolean? not_compact
    Boolean? no_record_buffered
    Boolean? no_ignore_errors
    String? src_crs
    Boolean? without_ld_context
    String? add_ld_context_item
    Boolean? no_parse
  }
  command <<<
    fio collect \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (not_compact) then "--not-compact" else ""} \
      ~{if (no_record_buffered) then "--no-record-buffered" else ""} \
      ~{if (no_ignore_errors) then "--no-ignore-errors" else ""} \
      ~{if defined(src_crs) then ("--src-crs " +  '"' + src_crs + '"') else ""} \
      ~{if (without_ld_context) then "--without-ld-context" else ""} \
      ~{if defined(add_ld_context_item) then ("--add-ld-context-item " +  '"' + add_ld_context_item + '"') else ""} \
      ~{if (no_parse) then "--no-parse" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    precision: "Decimal precision of coordinates."
    indent: "Indentation level for JSON output"
    not_compact: "Use compact separators (',', ':')."
    no_record_buffered: "Economical buffering of writes at record,\\nnot collection (default), level."
    no_ignore_errors: "log errors but do not stop serialization."
    src_crs: "Source CRS."
    without_ld_context: "add a JSON-LD context to JSON output."
    add_ld_context_item: "map a term to a URI and add it to the\\noutput's JSON LD context."
    no_parse: "load and dump the geojson feature (default\\nis True)"
  }
  output {
    File out_stdout = stdout()
  }
}