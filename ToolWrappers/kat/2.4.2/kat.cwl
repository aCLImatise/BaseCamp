class: CommandLineTool
id: kat.cwl
inputs:
- id: in_print_extra_information
  doc: '[ --verbose ]      Print extra information'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_distributions_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kat
