class: CommandLineTool
id: msspsmtable_merge.cwl
inputs:
- id: i
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- merge
