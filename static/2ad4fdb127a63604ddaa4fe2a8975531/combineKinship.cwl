class: CommandLineTool
id: combineKinship.cwl
inputs:
- id: in_out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_pc_a
  doc: ': Decomoposite calculated kinship matrix.'
  type: boolean?
  inputBinding:
    prefix: --pca
- id: in_thread
  doc: ': Specify number of parallel threads to speed up'
  type: boolean?
  inputBinding:
    prefix: --thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- combineKinship
