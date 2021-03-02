class: CommandLineTool
id: gbrowseold2gff3.pl.cwl
inputs:
- id: in_hints
  doc: convert gff format for intron hints to gff3
  type: string
  inputBinding:
    position: 0
- id: in_source
  doc: fill this into the second column
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gbrowseold2gff3.pl
