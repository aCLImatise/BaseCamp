class: CommandLineTool
id: smof_cut.cwl
inputs:
- id: in_fields
  doc: Indices to print, comma delimited, with ranges
  type: string
  inputBinding:
    prefix: --fields
- id: in_complement
  doc: Invert selection
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- cut
