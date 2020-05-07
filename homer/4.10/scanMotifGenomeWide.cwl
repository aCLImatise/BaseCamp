class: CommandLineTool
id: scanMotifGenomeWide.pl.cwl
inputs:
- id: bed
  doc: (format as a BED file, i.e. for UCSC upload) -int (round motif scores to nearest
    integer, use if making bigBed file)
  type: boolean
  inputBinding:
    prefix: -bed
- id: home_r1
  doc: (use the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: home_r2
  doc: (use homer2 instead of the original homer, default)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: keep_all
  doc: (keep ALL sites, even ones that overlap, default is to keep one)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: mask
  doc: (search for motifs in repeat masked sequence)
  type: boolean
  inputBinding:
    prefix: -mask
- id: p
  doc: <#> (Number of CPUs to use)
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- scanMotifGenomeWide.pl
