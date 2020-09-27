class: CommandLineTool
id: locarna_mea.pl.cwl
inputs:
- id: in_man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
- id: in_loca_rna_me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- locarna-mea.pl
