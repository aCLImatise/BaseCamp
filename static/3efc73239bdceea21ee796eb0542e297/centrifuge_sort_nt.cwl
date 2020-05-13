class: CommandLineTool
id: centrifuge_sort_nt.pl.cwl
inputs:
- id: m
  doc: Output mappings that are present in sequence file to file str
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: Output ACs w/o mapping to file str
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-sort-nt.pl
