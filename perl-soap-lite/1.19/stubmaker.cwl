class: CommandLineTool
id: stubmaker.pl.cwl
inputs:
- id: v
  doc: Verbose Outputbe quiet
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Output directory
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- stubmaker.pl
