class: CommandLineTool
id: ../../../pvacseq_valid_alleles.cwl
inputs:
- id: prediction_algorithm
  doc: The epitope prediction algorithms to use
  type: string
  inputBinding:
    prefix: --prediction-algorithm
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- valid_alleles
