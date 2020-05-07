class: CommandLineTool
id: gaas_junctions2hints.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: junction_s2hintspl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: string
  inputBinding:
    prefix: --infile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_junctions2hints.pl
