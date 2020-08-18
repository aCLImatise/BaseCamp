class: CommandLineTool
id: ../../../treebest_mmerge.cwl
inputs:
- id: reroot
  doc: reroot
  type: boolean
  inputBinding:
    prefix: -r
- id: species_tree
  doc: species tree [default taxa tree]
  type: File
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- mmerge
