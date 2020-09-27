class: CommandLineTool
id: SnpSift_covMat.cwl
inputs:
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cov_mat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_allele_dot_matrix_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- covMat
