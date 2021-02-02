class: CommandLineTool
id: ../../../mb_normalize.cwl
inputs:
- id: in_mut_snp_ratio
  doc: "remove positions with SNP-ratio > r\n"
  type: string
  inputBinding:
    prefix: --mut_snp_ratio
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-normalize
