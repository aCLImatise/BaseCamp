class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_seqrange_procidx.cwl
inputs:
- id: esl_seq_range
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: proc_idx
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: nproc
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-seqrange
- procidx
