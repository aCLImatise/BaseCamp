class: CommandLineTool
id: transfer_annotation_to_groups.cwl
inputs:
- id: o
  doc: output filename [reannotated_groups]
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: clusters filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -g
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- transfer_annotation_to_groups
