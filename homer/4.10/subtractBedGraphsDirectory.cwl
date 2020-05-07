class: CommandLineTool
id: subtractBedGraphsDirectory.pl.cwl
inputs:
- id: prefix
  doc: (will separate bedGraphs based on this name)
  type: string
  inputBinding:
    prefix: -prefix
- id: center
  doc: (center bedGraphs on average signal, removes global differences)
  type: boolean
  inputBinding:
    prefix: -center
outputs: []
cwlVersion: v1.1
baseCommand:
- subtractBedGraphsDirectory.pl
