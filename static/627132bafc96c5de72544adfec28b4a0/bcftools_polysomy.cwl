class: CommandLineTool
id: bcftools_polysomy.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: peak_size
  doc: minimum peak size (0-1, larger is stricter) [0.1]
  type: double
  inputBinding:
    prefix: --peak-size
- id: cn_penalty
  doc: penalty for increasing CN (0-1, larger is stricter) [0.7]
  type: double
  inputBinding:
    prefix: --cn-penalty
- id: fit_th
  doc: goodness of fit threshold (>0, smaller is stricter) [3.3]
  type: double
  inputBinding:
    prefix: --fit-th
- id: include_aa
  doc: include the AA peak in CN2 and CN3 evaluation
  type: boolean
  inputBinding:
    prefix: --include-aa
- id: min_fraction
  doc: minimum distinguishable fraction of aberrant cells [0.1]
  type: double
  inputBinding:
    prefix: --min-fraction
- id: peak_symmetry
  doc: peak symmetry threshold (0-1, larger is stricter) [0.5]
  type: double
  inputBinding:
    prefix: --peak-symmetry
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- polysomy
