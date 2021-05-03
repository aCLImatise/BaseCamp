class: CommandLineTool
id: varlociraptor_filter_calls_control_fdr.cwl
inputs:
- id: in_events
  doc: '...    Events to consider.'
  type: string?
  inputBinding:
    prefix: --events
- id: in_fdr
  doc: FDR to control for.
  type: string?
  inputBinding:
    prefix: --fdr
- id: in_maxlen
  doc: Maximum indel length to consider (exclusive).
  type: long?
  inputBinding:
    prefix: --maxlen
- id: in_min_len
  doc: Minimum indel length to consider.
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_var
  doc: 'Variant type to consider. [possible values: INS, DEL, SNV, MNV, BND, INV,
    DUP, REP, REF]'
  type: string?
  inputBinding:
    prefix: --var
- id: in_calls_dot_bcf
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
  dockerPull: quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- filter-calls
- control-fdr
