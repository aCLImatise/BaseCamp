class: CommandLineTool
id: recomap_hapmap2.cwl
inputs:
- id: in_one_kg_map_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- recomap_hapmap2
