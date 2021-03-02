class: CommandLineTool
id: t2gg.cwl
inputs:
- id: in_v_zero_dot_eight
  doc: ''
  type: double?
  inputBinding:
    position: 0
- id: in_nodes_dot_dmp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_names_dot_dmp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tid_two_gg_dot_txt
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/burst:v1.0--0
cwlVersion: v1.1
baseCommand:
- t2gg
