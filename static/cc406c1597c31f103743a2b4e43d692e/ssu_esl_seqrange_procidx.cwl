class: CommandLineTool
id: ssu_esl_seqrange_procidx.cwl
inputs:
- id: in_ssu_esl_seq_range
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_proc_idx
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_nproc
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqrange
- procidx
