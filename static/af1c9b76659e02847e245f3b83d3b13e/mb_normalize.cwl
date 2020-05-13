class: CommandLineTool
id: mb_normalize.cwl
inputs:
- id: input_file
  doc: PAR-CLIP file *.table
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: normalized PAR-CLIP file *.table
  type: string
  inputBinding:
    position: 1
- id: normalization_pile_up
  doc: pileup file used for normalization
  type: string
  inputBinding:
    position: 2
- id: mut_snp_ratio
  doc: remove positions with SNP-ratio > r
  type: string
  inputBinding:
    prefix: --mut_snp_ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-normalize
