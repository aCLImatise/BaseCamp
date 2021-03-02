class: CommandLineTool
id: yak_triobin.cwl
inputs:
- id: in_min_occurrence
  doc: min occurrence [2]
  type: long?
  inputBinding:
    prefix: -c
- id: in_mid_occurrence
  doc: mid occurrence [5]
  type: long?
  inputBinding:
    prefix: -d
- id: in_number_of_threads
  doc: number of threads [8]
  type: long?
  inputBinding:
    prefix: -t
- id: in_pat_dot_yak
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mat_dot_yak
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yak:0.1--hed695b0_0
cwlVersion: v1.1
baseCommand:
- yak
- triobin
