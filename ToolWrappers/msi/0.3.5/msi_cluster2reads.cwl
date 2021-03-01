class: CommandLineTool
id: msi_cluster2reads.cwl
inputs:
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_o
  doc: ''
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
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
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi_cluster2reads
