class: CommandLineTool
id: ../../../zerone.cwl
inputs:
- id: mock
  doc: ': given file is a mock control'
  type: boolean
  inputBinding:
    prefix: --mock
- id: chip
  doc: ': given file is a ChIP-seq experiment'
  type: boolean
  inputBinding:
    prefix: --chip
- id: window
  doc: ': window size in bp (default 300)'
  type: boolean
  inputBinding:
    prefix: --window
- id: quality
  doc: ': minimum mapping quality (default 20)'
  type: boolean
  inputBinding:
    prefix: --quality
- id: list_output
  doc: ': output list of targets (default table)'
  type: boolean
  inputBinding:
    prefix: --list-output
- id: confidence
  doc: ': print targets only with higher confidence restricts intervals accordingly
    in list output'
  type: boolean
  inputBinding:
    prefix: --confidence
- id: input_file_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- zerone
