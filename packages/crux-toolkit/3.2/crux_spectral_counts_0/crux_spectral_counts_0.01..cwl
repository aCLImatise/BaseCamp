class: CommandLineTool
id: crux_spectral_counts_0.01..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_spectral_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- spectral-counts
- 0.01.
