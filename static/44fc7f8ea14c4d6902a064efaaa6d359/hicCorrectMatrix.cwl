class: CommandLineTool
id: hicCorrectMatrix.cwl
inputs:
- id: filter_threshold
  doc: <upper threshold> -o corrected_matrix
  type: string
  inputBinding:
    prefix: --filterThreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
