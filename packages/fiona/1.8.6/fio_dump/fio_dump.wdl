version 1.0

task FioDump {
  input {
    String? layer
    File? encoding
    Int? precision
    Int? indent
    Boolean? not_compact
    Boolean? no_record_buffered
    Boolean? no_ignore_errors
    Boolean? without_ld_context
    String? add_ld_context_item
    String var_input
  }
  command <<<
    fio dump \
      ~{var_input} \
      ~{if defined(layer) then ("--layer " +  '"' + layer + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (not_compact) then "--not-compact" else ""} \
      ~{if (no_record_buffered) then "--no-record-buffered" else ""} \
      ~{if (no_ignore_errors) then "--no-ignore-errors" else ""} \
      ~{if (without_ld_context) then "--without-ld-context" else ""} \
      ~{if defined(add_ld_context_item) then ("--add-ld-context-item " +  '"' + add_ld_context_item + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    layer: "|NAME              Print information about a specific layer.\\nThe first layer is used by default.  Layers\\nuse zero-based numbering when accessed by\\nindex."
    encoding: "Specify encoding of the input file."
    precision: "Decimal precision of coordinates."
    indent: "Indentation level for JSON output"
    not_compact: "Use compact separators (',', ':')."
    no_record_buffered: "Economical buffering of writes at record,\\nnot collection (default), level."
    no_ignore_errors: "log errors but do not stop serialization."
    without_ld_context: "add a JSON-LD context to JSON output."
    add_ld_context_item: "map a term to a URI and add it to the\\noutput's JSON LD context."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}