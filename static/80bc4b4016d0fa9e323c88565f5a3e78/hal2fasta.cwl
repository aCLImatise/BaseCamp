class: CommandLineTool
id: ../../../hal2fasta.cwl
inputs:
- id: in_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hal2fasta
