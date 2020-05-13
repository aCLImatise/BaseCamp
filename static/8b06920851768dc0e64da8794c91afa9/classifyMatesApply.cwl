class: CommandLineTool
id: classifyMatesApply.cwl
inputs:
- id: g
  doc: Read fragments from here
  type: string
  inputBinding:
    prefix: -G
- id: r
  doc: Read results from here; any number of -r options can be supplied
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: Also dump the results to stdout
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: Output gatekeeper edit file
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- classifyMatesApply
