class: CommandLineTool
id: ariba_refquery_cluster|seq.cwl
inputs:
- id: in_ariba
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_query
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_prepare_ref_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: in_cluster_vertical_line_seq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_cluster_name_vertical_line_sequence_name
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- ariba
- refquery
- cluster|seq
