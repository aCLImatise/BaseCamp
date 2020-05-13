class: CommandLineTool
id: rfmix2tagore.py.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: afr
  doc: Color for African blocks
  type: string
  inputBinding:
    prefix: --afr
- id: eur
  doc: Color for European blocks
  type: string
  inputBinding:
    prefix: --eur
- id: nat
  doc: Color for Native American / Asian blocks
  type: string
  inputBinding:
    prefix: --nat
- id: unk
  doc: Color for Unknown regions
  type: string
  inputBinding:
    prefix: --unk
- id: out
  doc: Output da Vinci bed
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- rfmix2tagore.py
