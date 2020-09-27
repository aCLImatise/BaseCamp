class: CommandLineTool
id: btrim.cwl
inputs:
- id: in_u
  doc: '[Unitig file]'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_k
  doc: '[Kmer size]'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_var_2
  doc: '[Tipping length (none)]'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_var_3
  doc: '[Cleaning Step (1)]'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_c
  doc: '[Core used (1)]'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_f
  doc: '[Unitig min coverage (none, 0 for auto)]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_m
  doc: '[Unitig max coverage (none)]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_a
  doc: '[Edge filtering ratio (none)]'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_o
  doc: '[Output file (out_tipped)]'
  type: File
  inputBinding:
    prefix: -o
- id: in_unit_ig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: '[Output file (out_tipped)]'
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- btrim
