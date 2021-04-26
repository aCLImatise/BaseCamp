class: CommandLineTool
id: arcasHLA_partial_file.cwl
inputs:
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -G
- id: in_ar_cash_la
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_partial
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_q
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
  dockerPull: quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- arcasHLA
- partial
- file
