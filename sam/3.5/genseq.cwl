class: CommandLineTool
id: ../../../genseq.cwl
inputs:
- id: n_seq
  doc: number of sequences to generate
  type: long
  inputBinding:
    prefix: -Nseq
- id: alphabet_for_sequences
  doc: alphabet for sequences
  type: string
  inputBinding:
    prefix: -a
- id: mean_log_len
  doc: Ave(log length) (  5.415100)
  type: boolean
  inputBinding:
    prefix: -meanloglen
- id: sd_log_len
  doc: Std Dev (log length) (  1.036326)
  type: boolean
  inputBinding:
    prefix: -sdloglen
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genseq
