class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dx_notebook_reconnect.cwl
inputs:
- id: port
  doc: Local port to use for connecting.
  type: string
  inputBinding:
    prefix: --port
- id: job_id
  doc: Job-id of the notebook job to reconnect to.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-notebook-reconnect
