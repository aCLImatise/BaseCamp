class: CommandLineTool
id: ../../../fimo.cwl
inputs:
- id: thresh
  doc: (default = 1e-4)
  type: double
  inputBinding:
    prefix: --thresh
- id: verbosity
  doc: '[1|2|3|4] (default 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: motif_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fimo
