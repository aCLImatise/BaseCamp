version 1.0

task Schemasaladtool {
  input {
    Int? rdf_serializer
    Boolean? print_json_ld_context
    Boolean? print_rdfs
    Boolean? print_avro
    Boolean? print_rdf
    Boolean? print_pre
    Boolean? print_index
    Boolean? print_metadata
    Boolean? print_inheritance_dot
    Boolean? print_field_refs_dot
    String? codegen
    Boolean? print_one_line
    Boolean? strict
    Boolean? non_strict
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    String schema
  }
  command <<<
    schema_salad_tool \
      ~{schema} \
      ~{if defined(rdf_serializer) then ("--rdf-serializer " +  '"' + rdf_serializer + '"') else ""} \
      ~{if (print_json_ld_context) then "--print-jsonld-context" else ""} \
      ~{if (print_rdfs) then "--print-rdfs" else ""} \
      ~{if (print_avro) then "--print-avro" else ""} \
      ~{if (print_rdf) then "--print-rdf" else ""} \
      ~{if (print_pre) then "--print-pre" else ""} \
      ~{if (print_index) then "--print-index" else ""} \
      ~{if (print_metadata) then "--print-metadata" else ""} \
      ~{if (print_inheritance_dot) then "--print-inheritance-dot" else ""} \
      ~{if (print_field_refs_dot) then "--print-fieldrefs-dot" else ""} \
      ~{if defined(codegen) then ("--codegen " +  '"' + codegen + '"') else ""} \
      ~{if (print_one_line) then "--print-oneline" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (non_strict) then "--non-strict" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rdf_serializer: "Output RDF serialization format used by --print-rdf\\n(one of turtle (default), n3, nt, xml)"
    print_json_ld_context: "Print JSON-LD context for schema"
    print_rdfs: "Print RDF schema"
    print_avro: "Print Avro schema"
    print_rdf: "Print corresponding RDF graph for document"
    print_pre: "Print document after preprocessing"
    print_index: "Print node index"
    print_metadata: "Print document metadata"
    print_inheritance_dot: "Print graphviz file of inheritance"
    print_field_refs_dot: "Print graphviz file of field refs"
    codegen: "Generate classes in target language, currently\\nsupported: python"
    print_one_line: "Print each error message in oneline"
    strict: "Strict validation (unrecognized or out of place fields\\nare error)"
    non_strict: "Lenient validation (ignore unrecognized fields)"
    verbose: "Default logging"
    quiet: "Only print warnings and errors."
    debug: "Print even more logging"
    schema: "document"
  }
  output {
    File out_stdout = stdout()
  }
}