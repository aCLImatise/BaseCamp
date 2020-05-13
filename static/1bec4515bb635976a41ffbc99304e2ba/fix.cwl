class: CommandLineTool
id: fix.py.cwl
inputs:
- id: input
  doc: The input list of gene pairs.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The sorted output of gene pairs.
  type: string
  inputBinding:
    prefix: --output
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
outputs: []
cwlVersion: v1.1
baseCommand:
- fix.py
