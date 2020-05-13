class: CommandLineTool
id: kinshipDecompose.cwl
inputs:
- id: in
  doc: ': Input kinship file'
  type: boolean
  inputBinding:
    prefix: --in
- id: out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- kinshipDecompose
