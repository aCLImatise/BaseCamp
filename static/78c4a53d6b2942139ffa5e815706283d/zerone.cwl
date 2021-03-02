class: CommandLineTool
id: zerone.cwl
inputs:
- id: in_mock
  doc: ': given file is a mock control'
  type: boolean?
  inputBinding:
    prefix: --mock
- id: in_chip
  doc: ': given file is a ChIP-seq experiment'
  type: boolean?
  inputBinding:
    prefix: --chip
- id: in_window
  doc: ': window size in bp (default 300)'
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_quality
  doc: ': minimum mapping quality (default 20)'
  type: boolean?
  inputBinding:
    prefix: --quality
- id: in_list_output
  doc: ': output list of targets (default table)'
  type: boolean?
  inputBinding:
    prefix: --list-output
- id: in_confidence
  doc: ": print targets only with higher confidence\nrestricts intervals accordingly\
    \ in list output"
  type: boolean?
  inputBinding:
    prefix: --confidence
- id: in_input_file_n
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- zerone
