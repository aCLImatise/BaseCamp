class: CommandLineTool
id: simpleContigLoader_bank path.cwl
inputs:
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- simpleContigLoader
- bank path
