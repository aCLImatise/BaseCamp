class: CommandLineTool
id: mb_normalize_normalization_pileup.cwl
inputs:
- id: in_mut_snp_ratio
  doc: ''
  type: string?
  inputBinding:
    prefix: --mut_snp_ratio
- id: in_mb_normalize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-normalize
- normalization_pileup
