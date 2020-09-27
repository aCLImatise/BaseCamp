class: CommandLineTool
id: brassI_prep_bam.pl.cwl
inputs:
- id: in_bas
  doc: -b    Bas statistics file for BAM being streame
  type: boolean
  inputBinding:
    prefix: -bas
- id: in_prefix
  doc: "-p    Prefix all readgroup IDs with this text to force unique between samples,\
    \ (e.g. T, N)\n- csv"
  type: boolean
  inputBinding:
    prefix: -prefix
- id: in_norm_panel
  doc: -np   For generation of normal panel input only
  type: boolean
  inputBinding:
    prefix: -norm_panel
- id: in_man
  doc: -m    Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_example
  doc: '... | brassI_prep_bam.pl -b my.bam.bas -e NC_007605,hs37d5,GL% | <some digesting
    process>'
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: -include      -i    Include reads where self and mate are mapped to this ref
    name (or unmapped).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- brassI_prep_bam.pl
