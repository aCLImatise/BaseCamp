class: CommandLineTool
id: extractUnmappedSubreads.py.cwl
inputs:
- id: verbose
  doc: 'Set the verbosity level (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: debug
  doc: 'Catch exceptions in debugger (requires ipdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- extractUnmappedSubreads.py
