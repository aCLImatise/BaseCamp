class: CommandLineTool
id: kallisto_h5dump_abundance.h5.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: abundance_h5
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- h5dump
- abundance.h5
