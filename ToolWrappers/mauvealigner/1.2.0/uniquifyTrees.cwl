class: CommandLineTool
id: uniquifyTrees.cwl
inputs:
- id: in_nexus_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_nexus_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_nexus_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_nexus_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- uniquifyTrees
