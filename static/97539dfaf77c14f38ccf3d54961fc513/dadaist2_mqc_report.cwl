class: CommandLineTool
id: dadaist2_mqc_report.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.5--0
cwlVersion: v1.1
baseCommand:
- dadaist2-mqc-report
