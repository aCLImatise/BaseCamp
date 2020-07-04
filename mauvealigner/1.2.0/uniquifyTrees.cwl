class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/uniquifyTrees.cwl
inputs:
- id: nexus_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- uniquifyTrees
