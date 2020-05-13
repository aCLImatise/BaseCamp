class: CommandLineTool
id: build_fixed.cwl
inputs:
- id: d
  doc: Set depth of model to <num>
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: Train using strings specified by subscripts in file named <fn>
  type: string
  inputBinding:
    prefix: -i
- id: p
  doc: ',n2,...,nk  Permutation describing re-ordering of character positions of input
    string to build model'
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: Specify special position in model
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: Output model as text (for debugging only)
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: Set verbose level; higher is more diagnostic printouts
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- build-fixed
