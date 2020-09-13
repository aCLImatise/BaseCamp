class: CommandLineTool
id: ../../../cmph5tools.py.cwl
inputs:
- id: in_verbose
  doc: 'Set the verbosity level (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_debug
  doc: "Catch exceptions in debugger (requires ipdb) (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
