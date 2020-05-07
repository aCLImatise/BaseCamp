class: CommandLineTool
id: bstats.cwl
inputs:
- id: v
  doc: ': verbose '
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: ': Sampling iterations (100) '
  type: long
  inputBinding:
    prefix: -i
- id: d
  doc: ': Output diff data to <file>'
  type: File
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bstats
