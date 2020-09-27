class: CommandLineTool
id: unique_kmers.py.cwl
inputs:
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_input_sequence_filename
  doc: Input FAST[AQ] sequence filename(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unique-kmers.py
