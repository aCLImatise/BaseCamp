class: CommandLineTool
id: crux_generate_peptides.cwl
inputs:
- id: protein_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- generate-peptides
