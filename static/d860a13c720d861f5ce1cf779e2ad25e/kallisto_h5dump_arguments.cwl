class: CommandLineTool
id: kallisto_h5dump_arguments.cwl
inputs:
- id: abundance_h5
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- h5dump
- arguments
