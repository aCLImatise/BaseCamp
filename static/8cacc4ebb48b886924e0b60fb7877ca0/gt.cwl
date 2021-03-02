class: CommandLineTool
id: gt.cwl
inputs:
- id: in_enter_interactive_mode
  doc: enter interactive mode after executing 'tool' or 'script'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_suppress_warnings
  doc: suppress warnings
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_test
  doc: perform unit tests and exit
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_seed
  doc: "set seed for random number generator manually.\n0 generates a seed from current\
    \ time and process id"
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_version
  doc: version information and exit
  type: string?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gt
