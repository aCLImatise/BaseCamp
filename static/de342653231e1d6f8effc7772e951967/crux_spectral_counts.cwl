class: CommandLineTool
id: crux_spectral_counts.cwl
inputs:
- id: input_psms
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- spectral-counts
