class: CommandLineTool
id: treebest_mmerge.cwl
inputs:
- id: r
  doc: reroot
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: species tree [default taxa tree]
  type: File
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- mmerge
