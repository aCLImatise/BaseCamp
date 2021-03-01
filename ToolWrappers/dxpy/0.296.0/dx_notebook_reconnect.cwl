class: CommandLineTool
id: dx_notebook_reconnect.cwl
inputs:
- id: in_port
  doc: Local port to use for connecting.
  type: string?
  inputBinding:
    prefix: --port
- id: in_job_id
  doc: Job-id of the notebook job to reconnect to.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-notebook-reconnect
