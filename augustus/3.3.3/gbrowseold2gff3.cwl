class: CommandLineTool
id: ../../../gbrowseold2gff3.pl.cwl
inputs:
- id: hints
  doc: convert gff format for intron hints to gff3
  type: string
  inputBinding:
    position: 0
- id: source
  doc: fill this into the second column
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gbrowseold2gff3.pl
