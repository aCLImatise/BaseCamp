class: CommandLineTool
id: easypqp_reduce.cwl
inputs:
- id: in_in
  doc: Input PQP file.  [required]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Output PQP file.  [required]
  type: File?
  inputBinding:
    prefix: --out
- id: in_bins
  doc: 'Number of bins to fill along gradient.  [default: 10]'
  type: long?
  inputBinding:
    prefix: --bins
- id: in_peptides
  doc: 'Number of peptides to sample.  [default: 5]'
  type: long?
  inputBinding:
    prefix: --peptides
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output PQP file.  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- easypqp
- reduce
