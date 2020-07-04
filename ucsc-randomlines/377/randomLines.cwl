class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/randomLines.cwl
inputs:
- id: seed
  doc: '- Set seed used for randomizing, useful for debugging.'
  type: string
  inputBinding:
    prefix: -seed
- id: de_comment
  doc: '- remove blank lines and those starting with '
  type: boolean
  inputBinding:
    prefix: -decomment
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
outputs: []
cwlVersion: v1.1
baseCommand:
- randomLines
