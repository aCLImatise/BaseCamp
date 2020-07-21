class: CommandLineTool
id: ../../../kat.cwl
inputs:
- id: print_extra_information
  doc: '[ --verbose ]      Print extra information'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kat
