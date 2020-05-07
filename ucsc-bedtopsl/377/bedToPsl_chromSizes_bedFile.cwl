class: CommandLineTool
id: bedToPsl_chromSizes_bedFile.cwl
inputs:
- id: psl_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToPsl
- chromSizes
- bedFile
