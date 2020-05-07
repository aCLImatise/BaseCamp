class: CommandLineTool
id: mask_quality.py.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: Format of input (axt or maf)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Format of output (axt or maf)
  type: string
  inputBinding:
    prefix: --output
- id: mask
  doc: Character to use as mask character
  type: string
  inputBinding:
    prefix: --mask
- id: quality
  doc: Min quality allowed
  type: string
  inputBinding:
    prefix: --quality
- id: type
  doc: base_pair or nqs
  type: string
  inputBinding:
    prefix: --type
- id: list
  doc: colon seperated list of species,len_file[,qualityfile].
  type: string
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- mask_quality.py
