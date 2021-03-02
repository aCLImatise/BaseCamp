class: CommandLineTool
id: schema_salad_tool.cwl
inputs:
- id: in_rdf_serializer
  doc: "Output RDF serialization format used by --print-rdf\n(one of turtle (default),\
    \ n3, nt, xml)"
  type: long?
  inputBinding:
    prefix: --rdf-serializer
- id: in_print_json_ld_context
  doc: Print JSON-LD context for schema
  type: boolean?
  inputBinding:
    prefix: --print-jsonld-context
- id: in_print_rdfs
  doc: Print RDF schema
  type: boolean?
  inputBinding:
    prefix: --print-rdfs
- id: in_print_avro
  doc: Print Avro schema
  type: boolean?
  inputBinding:
    prefix: --print-avro
- id: in_print_rdf
  doc: Print corresponding RDF graph for document
  type: boolean?
  inputBinding:
    prefix: --print-rdf
- id: in_print_pre
  doc: Print document after preprocessing
  type: boolean?
  inputBinding:
    prefix: --print-pre
- id: in_print_index
  doc: Print node index
  type: boolean?
  inputBinding:
    prefix: --print-index
- id: in_print_metadata
  doc: Print document metadata
  type: boolean?
  inputBinding:
    prefix: --print-metadata
- id: in_print_inheritance_dot
  doc: Print graphviz file of inheritance
  type: boolean?
  inputBinding:
    prefix: --print-inheritance-dot
- id: in_print_field_refs_dot
  doc: Print graphviz file of field refs
  type: boolean?
  inputBinding:
    prefix: --print-fieldrefs-dot
- id: in_codegen
  doc: "Generate classes in target language, currently\nsupported: python"
  type: string?
  inputBinding:
    prefix: --codegen
- id: in_print_one_line
  doc: Print each error message in oneline
  type: boolean?
  inputBinding:
    prefix: --print-oneline
- id: in_strict
  doc: "Strict validation (unrecognized or out of place fields\nare error)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_non_strict
  doc: Lenient validation (ignore unrecognized fields)
  type: boolean?
  inputBinding:
    prefix: --non-strict
- id: in_verbose
  doc: Default logging
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Only print warnings and errors.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Print even more logging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_schema
  doc: document
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- schema-salad-tool
