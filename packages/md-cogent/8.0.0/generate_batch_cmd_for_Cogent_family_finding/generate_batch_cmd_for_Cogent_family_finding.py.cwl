class: CommandLineTool
id: generate_batch_cmd_for_Cogent_family_finding.py.cwl
inputs:
- id: in_generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_batch
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_commands
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_running
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_cogent
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_family
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_finding
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_pre_cluster
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_bin
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- generate_batch_cmd_for_Cogent_family_finding.py
