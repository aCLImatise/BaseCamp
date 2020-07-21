class: CommandLineTool
id: ../../../fasttree.cwl
inputs:
- id: expert
  doc: -- see more options
  type: boolean
  inputBinding:
    prefix: -expert
outputs: []
cwlVersion: v1.1
baseCommand:
- fasttree
