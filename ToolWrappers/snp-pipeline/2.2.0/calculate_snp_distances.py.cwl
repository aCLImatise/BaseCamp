class: CommandLineTool
id: calculate_snp_distances.py.cwl
inputs:
- id: in_force
  doc: "Force processing even when result file already exists\nand is newer than inputs\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_pairs
  doc: "Relative or absolute path to the pairwise distance\noutput file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --pairs
- id: in_matrix
  doc: "Relative or absolute path to the distance matrix\noutput file. (default: None)"
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_cfsan_snp_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_distance
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pairs
  doc: "Relative or absolute path to the pairwise distance\noutput file. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_pairs)
- id: out_matrix
  doc: "Relative or absolute path to the distance matrix\noutput file. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_matrix)
hints: []
cwlVersion: v1.1
baseCommand:
- calculate_snp_distances.py
