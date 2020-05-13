class: CommandLineTool
id: toLower_inFile.cwl
inputs:
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- toLower
- inFile
