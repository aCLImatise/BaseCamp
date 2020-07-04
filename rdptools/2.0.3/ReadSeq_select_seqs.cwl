class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ReadSeq_select_seqs.cwl
inputs:
- id: seq_length
  doc: minimum length of sequence
  type: string
  inputBinding:
    prefix: --seq_length
- id: ids_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_format
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: keep
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: y_vertical_linen
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- select-seqs
