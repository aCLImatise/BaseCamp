class: CommandLineTool
id: singularity_oci_kill.cwl
inputs:
- id: in_force
  doc: kill container process with SIGKILL
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_signal
  doc: signal sent to the container (default "SIGTERM")
  type: string?
  inputBinding:
    prefix: --signal
- id: in_timeout
  doc: timeout in second before killing container
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_kill
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- oci
- kill
