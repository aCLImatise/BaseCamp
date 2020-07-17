class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mask_quality.py.cwl
inputs:
- id: format_input_axt
  doc: Format of input (axt or maf)
  type: string
  inputBinding:
    prefix: --input
- id: format_output_axt
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
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mask_quality.py
