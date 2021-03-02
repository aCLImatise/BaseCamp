class: CommandLineTool
id: fio_cat.cwl
inputs:
- id: in_layer
  doc: "Input layer(s), specified as\n'fileindex:layer` For example, '1:foo,2:bar'\n\
    will concatenate layer foo from file 1 and\nlayer bar from file 2"
  type: File?
  inputBinding:
    prefix: --layer
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
- id: in_no_ignore_errors
  doc: log errors but do not stop serialization.
  type: boolean?
  inputBinding:
    prefix: --no-ignore-errors
- id: in_dst_crs
  doc: Destination CRS.
  type: string?
  inputBinding:
    prefix: --dst-crs
- id: in_no_rs
  doc: "Use RS (0x1E) as a prefix for individual\ntexts in a sequence as per\nhttp://tools.ietf.org/html/draft-ietf-json-\n\
    text-sequence-13 (default is False)."
  type: boolean?
  inputBinding:
    prefix: --no-rs
- id: in_bbox
  doc: ',s,e,n                  filter for features intersecting a bounding'
  type: string?
  inputBinding:
    prefix: --bbox
- id: in_box
  doc: --help                          Show this message and exit.
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
- cat
