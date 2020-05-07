class: CommandLineTool
id: zerone.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- zerone
