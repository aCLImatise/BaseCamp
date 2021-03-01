class: CommandLineTool
id: igdiscover_union.cwl
inputs:
- id: in_fast_a
  doc: FASTA file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- union
