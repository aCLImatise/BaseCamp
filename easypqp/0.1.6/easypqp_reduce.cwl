class: CommandLineTool
id: easypqp_reduce.cwl
inputs:
- id: in
  doc: Input PQP file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Output PQP file.  [required]
  type: File
  inputBinding:
    prefix: --out
- id: bins
  doc: 'Number of bins to fill along gradient.  [default: 10]'
  type: long
  inputBinding:
    prefix: --bins
- id: peptides
  doc: 'Number of peptides to sample.  [default: 5]'
  type: long
  inputBinding:
    prefix: --peptides
outputs: []
cwlVersion: v1.1
baseCommand:
- easypqp
- reduce
