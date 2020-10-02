class: CommandLineTool
id: subtractBedGraphsDirectory.pl.cwl
inputs:
- id: in_prefix
  doc: (will separate bedGraphs based on this name)
  type: string
  inputBinding:
    prefix: -prefix
- id: in_center
  doc: (center bedGraphs on average signal, removes global differences)
  type: boolean
  inputBinding:
    prefix: -center
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- subtractBedGraphsDirectory.pl
