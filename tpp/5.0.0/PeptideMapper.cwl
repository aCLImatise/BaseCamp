class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PeptideMapper.cwl
inputs:
- id: peptide_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: protein_database
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- PeptideMapper
