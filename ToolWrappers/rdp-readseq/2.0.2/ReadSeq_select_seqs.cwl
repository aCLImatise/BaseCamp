class: CommandLineTool
id: ReadSeq_select_seqs.cwl
inputs:
- id: in_sequence_selector
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_format
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_keep
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_y_vertical_linen
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- select-seqs
