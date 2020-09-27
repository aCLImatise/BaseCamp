class: CommandLineTool
id: treeGen.cwl
inputs:
- id: in_or
  doc: treeGen '*speciesFile' ['*groupFile'] > outfile
  type: string
  inputBinding:
    position: 0
- id: in_assignment_dot
  doc: The integers should appear in the same order as the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treeGen
