class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ReadSeq_select_seqs.cwl
inputs:
- id: sequence_selector
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ids_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_format
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: keep
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: y_vertical_linen
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- select-seqs
