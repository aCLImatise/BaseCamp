class: CommandLineTool
id: get_seq_stats.py.cwl
inputs:
- id: in_summarize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_lengths
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- get_seq_stats.py
