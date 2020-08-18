class: CommandLineTool
id: ../../../gaas_junctions2hints.pl.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    prefix: --infile
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: junctions_two_hints_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_junctions2hints.pl
