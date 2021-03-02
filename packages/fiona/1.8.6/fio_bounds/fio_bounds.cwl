class: CommandLineTool
id: fio_bounds.cwl
inputs:
- id: in_precision
  doc: Decimal precision of coordinates.
  type: long?
  inputBinding:
    prefix: --precision
- id: in_no_explode
  doc: 'Explode collections into features (default: no).'
  type: boolean?
  inputBinding:
    prefix: --no-explode
- id: in_without_id
  doc: "Print GeoJSON ids and bounding boxes together\n(default: without)."
  type: boolean?
  inputBinding:
    prefix: --without-id
- id: in_without_obj
  doc: "Print GeoJSON objects and bounding boxes\ntogether (default: without)."
  type: boolean?
  inputBinding:
    prefix: --without-obj
- id: in_no_rs
  doc: "Use RS (0x1E) as a prefix for individual texts\nin a sequence as per\nhttp://tools.ietf.org/html/draft-ietf-json-text-\n\
    sequence-13 (default is False)."
  type: boolean?
  inputBinding:
    prefix: --no-rs
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
- bounds
