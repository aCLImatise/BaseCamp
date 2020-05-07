class: CommandLineTool
id: brassI_prep_bam.pl.cwl
inputs:
- id: example
  doc: '... | brassI_prep_bam.pl -b my.bam.bas -e NC_007605,hs37d5,GL% | <some digesting
    process>'
  type: string
  inputBinding:
    position: 0
- id: include
  doc: -i    Include reads where self and mate are mapped to this ref name (or unmapped).
  type: boolean
  inputBinding:
    prefix: -include
- id: prefix
  doc: -p    Prefix all readgroup IDs with this text to force unique between samples,
    (e.g. T, N) - csv
  type: boolean
  inputBinding:
    prefix: -prefix
- id: norm_panel
  doc: -np   For generation of normal panel input only
  type: boolean
  inputBinding:
    prefix: -norm_panel
- id: man
  doc: -m    Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
outputs: []
cwlVersion: v1.1
baseCommand:
- brassI_prep_bam.pl
