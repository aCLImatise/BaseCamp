class: CommandLineTool
id: ssu_esl_seqrange_sqfile_procidx.cwl
inputs:
- id: nproc
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqrange
- sqfile
- procidx
