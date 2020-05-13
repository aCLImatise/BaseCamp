class: CommandLineTool
id: smof_cut.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: fields
  doc: Indices to print, comma delimited, with ranges
  type: string
  inputBinding:
    prefix: --fields
- id: complement
  doc: Invert selection
  type: boolean
  inputBinding:
    prefix: --complement
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- cut
