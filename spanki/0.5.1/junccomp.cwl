class: CommandLineTool
id: junccomp.cwl
inputs:
- id: a
  doc: 'table A (default: None)'
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: 'table B (default: None)'
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: "Output directory, default='junccomp_out' (default: junccomp_out)"
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- junccomp
