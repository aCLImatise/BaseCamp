class: CommandLineTool
id: tensorboard.cwl
inputs:
- id: in_run_app_debug
  doc: '[DEBUG]       Whether to run the app in debug mode. This increases'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_host
  doc: What host to listen to. Defaults to serving on
  type: string
  inputBinding:
    prefix: --host
- id: in_inspect
  doc: tensorboard --inspect
  type: string
  inputBinding:
    prefix: --inspect
- id: in_logdir
  doc: See
  type: string
  inputBinding:
    prefix: --logdir
- id: in_port
  doc: What port to serve TensorBoard on.
  type: string
  inputBinding:
    prefix: --port
- id: in_purge_orphaned_data
  doc: '[PURGE_ORPHANED_DATA]'
  type: boolean
  inputBinding:
    prefix: --purge_orphaned_data
- id: in_no_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nodebug
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tensorboard
