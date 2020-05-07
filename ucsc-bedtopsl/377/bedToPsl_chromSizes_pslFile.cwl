class: CommandLineTool
id: bedToPsl_chromSizes_pslFile.cwl
inputs:
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psl_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToPsl
- chromSizes
- pslFile
