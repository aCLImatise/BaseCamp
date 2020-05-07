class: CommandLineTool
id: SNPsplit_genome_preparation.cwl
inputs:
- id: snp_id
  doc: Chromosome  Position    Strand   Ref/SNP
  type: string
  inputBinding:
    position: 0
- id: snp_id
  doc: Chromosome  Position    Strand   Ref/SNP
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- SNPsplit_genome_preparation
