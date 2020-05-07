class: CommandLineTool
id: obo_intersection.pl.cwl
inputs:
- id: l
  doc: OBO input file 1
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: OBO input file 2
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- obo_intersection.pl
