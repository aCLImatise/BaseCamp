class: CommandLineTool
id: CONSENT_correction.cwl
inputs:
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_e
  doc: ''
  type: long?
  inputBinding:
    prefix: -e
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_k
  doc: ''
  type: long?
  inputBinding:
    prefix: -k
- id: in_a
  doc: ''
  type: File?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/consent:2.2.2--h8b12597_0
cwlVersion: v1.1
baseCommand:
- CONSENT-correction
