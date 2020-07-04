class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/junccomp.cwl
inputs:
- id: table_default_none
  doc: 'table A (default: None)'
  type: string
  inputBinding:
    prefix: -a
- id: table_b_default
  doc: 'table B (default: None)'
  type: string
  inputBinding:
    prefix: -b
- id: output_directory_default
  doc: "Output directory, default='junccomp_out' (default: junccomp_out)"
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- junccomp
