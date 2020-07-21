class: CommandLineTool
id: ../../../generate_names.pl.cwl
inputs:
- id: generate_names_do_tpl
  doc: '[ --out <output directory> ]         \ [ --verbose ]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- generate-names.pl
