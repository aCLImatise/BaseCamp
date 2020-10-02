class: CommandLineTool
id: randomLines.cwl
inputs:
- id: in_seed
  doc: '- Set seed used for randomizing, useful for debugging.'
  type: string
  inputBinding:
    prefix: -seed
- id: in_de_comment
  doc: '- remove blank lines and those starting with'
  type: boolean
  inputBinding:
    prefix: -decomment
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_count
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomLines
