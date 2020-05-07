class: CommandLineTool
id: rb.cwl
inputs:
- id: v
  doc: '[ --version ]      Show version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: b
  doc: '[ --batch ]        Run in batch mode.'
  type: boolean
  inputBinding:
    prefix: -b
- id: args
  doc: Command line arguments to initialize RevBayes  variables.
  type: string
  inputBinding:
    prefix: --args
- id: cmd
  doc: Script and command line arguments to initialize  RevBayes variables.
  type: string
  inputBinding:
    prefix: --cmd
- id: file
  doc: File(s) to source.
  type: string
  inputBinding:
    prefix: --file
- id: setoption
  doc: Set an option key=value.
  type: string
  inputBinding:
    prefix: --setOption
outputs: []
cwlVersion: v1.1
baseCommand:
- rb
