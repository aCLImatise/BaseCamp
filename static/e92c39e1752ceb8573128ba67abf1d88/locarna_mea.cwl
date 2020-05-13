class: CommandLineTool
id: locarna_mea.pl.cwl
inputs:
- id: loca_rna_me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_pp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna-mea.pl
