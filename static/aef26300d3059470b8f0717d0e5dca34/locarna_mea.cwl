class: CommandLineTool
id: ../../../locarna_mea.pl.cwl
inputs:
- id: man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
- id: loca_rna_me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_pp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna-mea.pl
