class: CommandLineTool
id: singularity_oci_exec.cwl
inputs:
- id: in_singularity
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_global
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_oci
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_exec
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_container_id
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- oci
- exec
