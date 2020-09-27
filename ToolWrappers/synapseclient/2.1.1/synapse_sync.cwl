class: CommandLineTool
id: synapse_sync.cwl
inputs:
- id: in_retries
  doc: ''
  type: long
  inputBinding:
    prefix: --retries
- id: in_send_messages
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sendMessages
- id: in_dry_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --dryRun
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- sync
