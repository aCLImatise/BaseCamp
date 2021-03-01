class: CommandLineTool
id: sibeliaz.cwl
inputs:
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_o
  doc: ''
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: long?
  inputBinding:
    prefix: -f
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_a
  doc: ''
  type: long?
  inputBinding:
    prefix: -a
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_b
  doc: ''
  type: long?
  inputBinding:
    prefix: -b
- id: in_k
  doc: ''
  type: long?
  inputBinding:
    prefix: -k
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- sibeliaz
