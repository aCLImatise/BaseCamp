class: CommandLineTool
id: wordLine.cwl
inputs:
- id: break
  doc: words based on C symbol rules rather than white space
  type: string
  inputBinding:
    prefix: '- Break'
outputs: []
cwlVersion: v1.1
baseCommand:
- wordLine
