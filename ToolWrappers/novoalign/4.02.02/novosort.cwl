class: CommandLineTool
id: novosort.cwl
inputs:
- id: in_umi
  doc: "UMI is part of Illumina read header '@Instrument:RunID:FlowCellID:Lane:Tile:X:Y:UMI'\n\
    If --UMI & --uniqueTags are both used then UMI tags takes precedence if it exists\n\
    on the header. If not found we look for the unique tags. This allows some degree\
    \ of\nmixing source of UMI."
  type: boolean
  inputBinding:
    prefix: --UMI
- id: in_sorted_dot
  doc: "[--assumesorted|-a]            Assume input files are already sorted even\
    \ if @HD doesn't"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- novosort
