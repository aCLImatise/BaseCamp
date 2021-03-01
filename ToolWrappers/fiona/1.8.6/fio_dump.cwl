class: CommandLineTool
id: fio_dump.cwl
inputs:
- id: in_layer
  doc: "|NAME              Print information about a specific layer.\nThe first layer\
    \ is used by default.  Layers\nuse zero-based numbering when accessed by\nindex."
  type: string?
  inputBinding:
    prefix: --layer
- id: in_encoding
  doc: Specify encoding of the input file.
  type: File?
  inputBinding:
    prefix: --encoding
- id: in_precision
  doc: Decimal precision of coordinates.
  type: long?
  inputBinding:
    prefix: --precision
- id: in_indent
  doc: Indentation level for JSON output
  type: long?
  inputBinding:
    prefix: --indent
- id: in_not_compact
  doc: Use compact separators (',', ':').
  type: boolean?
  inputBinding:
    prefix: --not-compact
- id: in_no_record_buffered
  doc: "Economical buffering of writes at record,\nnot collection (default), level."
  type: boolean?
  inputBinding:
    prefix: --no-record-buffered
- id: in_no_ignore_errors
  doc: log errors but do not stop serialization.
  type: boolean?
  inputBinding:
    prefix: --no-ignore-errors
- id: in_without_ld_context
  doc: add a JSON-LD context to JSON output.
  type: boolean?
  inputBinding:
    prefix: --without-ld-context
- id: in_add_ld_context_item
  doc: "map a term to a URI and add it to the\noutput's JSON LD context."
  type: string?
  inputBinding:
    prefix: --add-ld-context-item
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- dump
