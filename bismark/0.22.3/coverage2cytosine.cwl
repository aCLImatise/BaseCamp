class: CommandLineTool
id: ../../../coverage2cytosine.cwl
inputs:
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
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage2cytosine
