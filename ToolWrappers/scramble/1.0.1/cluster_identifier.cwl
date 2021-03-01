class: CommandLineTool
id: cluster_identifier.cwl
inputs:
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_soft
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_clipped
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_bases
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_cram
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scramble:1.0.1--h516909a_0
cwlVersion: v1.1
baseCommand:
- cluster_identifier
