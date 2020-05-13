class: CommandLineTool
id: randomLines.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: seed
  doc: used for randomizing, useful for debugging.
  type: string
  inputBinding:
    prefix: -seed
- id: de_comment
  doc: 'lines and those starting with '
  type: string
  inputBinding:
    prefix: -decomment
outputs: []
cwlVersion: v1.1
baseCommand:
- randomLines
