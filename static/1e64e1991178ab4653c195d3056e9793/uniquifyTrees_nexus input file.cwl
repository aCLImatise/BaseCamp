class: CommandLineTool
id: uniquifyTrees_nexus input file.cwl
inputs:
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- uniquifyTrees
- nexus input file
