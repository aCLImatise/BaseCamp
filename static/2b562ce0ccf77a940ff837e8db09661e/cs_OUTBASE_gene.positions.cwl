class: CommandLineTool
id: cs_OUTBASE_gene.positions.cwl
inputs:
- id: in_cs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cs
- OUTBASE_gene.positions
