class: CommandLineTool
id: kinshipDecompose.cwl
inputs:
- id: in_in
  doc: ': Input kinship file'
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_out
  doc: ': Output prefix for autosomal kinship calculation'
  type: boolean?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kinshipDecompose
