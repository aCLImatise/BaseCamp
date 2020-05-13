class: CommandLineTool
id: droppe.py.cwl
inputs:
- id: input
  doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - -').
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - -').
  type: string
  inputBinding:
    prefix: --output
- id: keep
  doc: Reads ids that should not be removed. Default is none.
  type: string
  inputBinding:
    prefix: --keep
- id: info
  doc: Counts of Reads that where removed. Default is none.
  type: string
  inputBinding:
    prefix: --info
outputs: []
cwlVersion: v1.1
baseCommand:
- droppe.py
