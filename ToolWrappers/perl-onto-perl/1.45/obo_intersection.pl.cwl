class: CommandLineTool
id: obo_intersection.pl.cwl
inputs:
- id: in_l
  doc: OBO input file 1
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_r
  doc: OBO input file 2
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_usage
  doc: ': obo_intersection.pl [options]'
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
- obo_intersection.pl
