class: CommandLineTool
id: srf_list.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: c
  doc: Count only - do not list filenames
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: Verbose - gives summary data per file too
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: 'List in long format. Lines contain: name position body-size header-size'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_list
