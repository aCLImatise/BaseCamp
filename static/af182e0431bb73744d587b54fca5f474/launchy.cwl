class: CommandLineTool
id: launchy.cwl
inputs:
- id: in_application
  doc: Explicitly specify the application class to use in the launch
  type: string?
  inputBinding:
    prefix: --application
- id: in_debug
  doc: Force debug. Output lots of information.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_engine
  doc: Force launchy to behave as if it was on a particular ruby engine.
  type: string?
  inputBinding:
    prefix: --engine
- id: in_dry_run
  doc: Don't launchy, print the command to be executed on stdout
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_host_os
  doc: Force launchy to behave as if it was on a particular host os.
  type: string?
  inputBinding:
    prefix: --host-os
- id: in_thing_to_launch
  doc: ''
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
- launchy
