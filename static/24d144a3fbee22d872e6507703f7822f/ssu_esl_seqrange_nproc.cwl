class: CommandLineTool
id: ssu_esl_seqrange_nproc.cwl
inputs:
- id: sq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: proc_idx
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: nproc
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqrange
- nproc
