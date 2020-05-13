class: CommandLineTool
id: cat_corrects.cwl
inputs:
- id: l
  doc: a file containing names of erate files
  type: string
  inputBinding:
    prefix: -L
- id: o
  doc: output file
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- cat-corrects
