class: CommandLineTool
id: cactus_filterSmallFastaSequences.py.cwl
inputs:
- id: in_prefix
  doc: only filter sequences with prefix in name
  type: string
  inputBinding:
    prefix: --prefix
- id: in_length
  doc: filter shorter than length [default=1000]
  type: long
  inputBinding:
    prefix: --length
- id: in_fast_a_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_output_file)
cwlVersion: v1.1
baseCommand:
- cactus_filterSmallFastaSequences.py
