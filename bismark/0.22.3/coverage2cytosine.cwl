class: CommandLineTool
id: coverage2cytosine.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_folder
  doc: ''
  type: File
  inputBinding:
    prefix: --genome_folder
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage2cytosine
