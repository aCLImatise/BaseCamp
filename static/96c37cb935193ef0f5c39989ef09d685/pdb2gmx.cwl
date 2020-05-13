class: CommandLineTool
id: pdb2gmx.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: system
  doc: ''
  type: string
  inputBinding:
    prefix: --system
- id: step
  doc: ''
  type: string
  inputBinding:
    prefix: --step
- id: input_pdb_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_pdb_path
- id: output_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_gro_path
- id: output_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_top_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pdb2gmx
