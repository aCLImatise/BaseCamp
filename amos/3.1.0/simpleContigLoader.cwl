class: CommandLineTool
id: ../../../simpleContigLoader.cwl
inputs:
- id: bank_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- simpleContigLoader
