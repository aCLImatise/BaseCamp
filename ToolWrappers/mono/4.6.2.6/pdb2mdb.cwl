class: CommandLineTool
id: pdb2mdb.cwl
inputs:
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pdb2mdb
