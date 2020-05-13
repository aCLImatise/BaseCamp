class: CommandLineTool
id: genseq.cwl
inputs:
- id: n_seq
  doc: number of sequences to generate
  type: long
  inputBinding:
    prefix: -Nseq
- id: a
  doc: <protein|RNA|DNA|EHL2...>  alphabet for sequences
  type: boolean
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
outputs: []
cwlVersion: v1.1
baseCommand:
- genseq
