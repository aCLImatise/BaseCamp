class: CommandLineTool
id: weedamb.cwl
inputs:
- id: in_save_ambiguous_sequences
  doc: ': save ambiguous sequences to this file'
  type: File
  inputBinding:
    prefix: -s
- id: in_seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- weedamb
