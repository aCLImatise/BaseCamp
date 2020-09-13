class: CommandLineTool
id: ../../../cooler.cwl
inputs:
- id: in_verbose
  doc: Verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: On error, drop into the post-mortem debugger shell.
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
