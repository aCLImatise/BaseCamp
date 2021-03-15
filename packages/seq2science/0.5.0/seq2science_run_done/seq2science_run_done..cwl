class: CommandLineTool
id: seq2science_run_done..cwl
inputs:
- id: in_k
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_skip_rerun
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --skip-rerun
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_j
  doc: ''
  type: string?
  inputBinding:
    prefix: -j
- id: in_seq_two_science
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seq2science:0.5.0--pypy_0
cwlVersion: v1.1
baseCommand:
- seq2science
- run
- done.
