class: CommandLineTool
id: ../../../SNPsplit_genome_preparation.cwl
inputs:
- id: vcf_file
  doc: ''
  type: File
  inputBinding:
    prefix: --vcf_file
- id: reference_genome
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reference_genome
outputs: []
cwlVersion: v1.1
baseCommand:
- SNPsplit_genome_preparation
