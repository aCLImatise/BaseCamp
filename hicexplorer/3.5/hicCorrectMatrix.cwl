class: CommandLineTool
id: ../../../hicCorrectMatrix.cwl
inputs:
- id: in_filter_threshold
  doc: <upper threshold> -o corrected_matrix
  type: string
  inputBinding:
    prefix: --filterThreshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicCorrectMatrix
