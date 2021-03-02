class: CommandLineTool
id: lra_local_file.fa.cwl
inputs:
- id: in_int_local_minimizer
  doc: (int) Local minimizer window size (10).
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_int_local_maximum
  doc: (int) Local maximum minimizer frequency (5).
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_int_local_word
  doc: (int) Local word size (10)
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_help
  doc: help.
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lra:1.1.2--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- lra
- local
- file.fa
