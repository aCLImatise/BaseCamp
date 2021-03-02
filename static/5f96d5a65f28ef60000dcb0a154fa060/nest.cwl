class: CommandLineTool
id: nest.cwl
inputs:
- id: in_execute_cmd_exit
  doc: Execute cmd and exit
  type: string?
  inputBinding:
    prefix: -c
- id: in_user_args
  doc: :...   put user defined arguments in statusdict::userargs
  type: long?
  inputBinding:
    prefix: --userargs
- id: in_debug
  doc: start in debug mode (implies --verbosity=ALL)
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nest
