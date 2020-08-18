class: CommandLineTool
id: ../../../testAtac.cwl
inputs:
- id: print_warning_match
  doc: print a warning if a match is below this percent identity
  type: boolean
  inputBinding:
    prefix: -i
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- testAtac
