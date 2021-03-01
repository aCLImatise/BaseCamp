class: CommandLineTool
id: singularity_oci_pause.cwl
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
- id: in_pause
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- oci
- pause
