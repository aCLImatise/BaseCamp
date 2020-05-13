class: CommandLineTool
id: bismark_genome_preparation.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nucleotide_coverage
  doc: .
  type: boolean
  inputBinding:
    prefix: --nucleotide_coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark_genome_preparation
