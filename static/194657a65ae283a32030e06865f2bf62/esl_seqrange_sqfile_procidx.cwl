class: CommandLineTool
id: esl_seqrange_sqfile_procidx.cwl
inputs:
- id: nproc
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-seqrange
- sqfile
- procidx
