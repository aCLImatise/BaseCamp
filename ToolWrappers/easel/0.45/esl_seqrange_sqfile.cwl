class: CommandLineTool
id: esl_seqrange_sqfile.cwl
inputs:
- id: in_proc_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nproc
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-seqrange
- sqfile
