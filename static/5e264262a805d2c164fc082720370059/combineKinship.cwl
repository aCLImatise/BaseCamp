class: CommandLineTool
id: combineKinship.cwl
inputs:
- id: out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean
  inputBinding:
    prefix: --out
- id: pc_a
  doc: ': Decomoposite calculated kinship matrix.'
  type: boolean
  inputBinding:
    prefix: --pca
- id: thread
  doc: ': Specify number of parallel threads to speed up'
  type: boolean
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- combineKinship
