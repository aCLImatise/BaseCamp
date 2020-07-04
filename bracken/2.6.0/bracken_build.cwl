class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bracken_build.cwl
inputs:
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: bracken_build
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bracken-build
