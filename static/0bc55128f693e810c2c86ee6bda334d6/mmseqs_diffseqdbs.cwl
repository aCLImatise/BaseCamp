class: CommandLineTool
id: mmseqs_diffseqdbs.cwl
inputs:
- id: use_seq_id
  doc: false           Sequence ID (Uniprot, GenBank, ...) is used for identifying
    matches between the old and the new DB.
  type: boolean
  inputBinding:
    prefix: --use-seq-id
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- diffseqdbs
