class: CommandLineTool
id: hmmconvert2.cwl
inputs:
- id: a
  doc: ': convert to HMMER ASCII file (the default)'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: ': convert to HMMER binary file'
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: ': convert to GCG Profile .prf format'
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: ': convert to Compugen extended .eprf profile format'
  type: boolean
  inputBinding:
    prefix: -P
- id: a
  doc: ': append mode; append to <new hmm file>'
  type: boolean
  inputBinding:
    prefix: -A
- id: f
  doc: ': force mode; allow overwriting of existing files'
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert2
