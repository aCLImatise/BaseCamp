class: CommandLineTool
id: loadPromoters.pl.cwl
inputs:
- id: as
  doc: '(Redundant/CpG analysis start, default: -300)'
  type: string
  inputBinding:
    prefix: -as
- id: ae
  doc: '(Redundant/CpG analysis end, default: 50)'
  type: string
  inputBinding:
    prefix: -ae
- id: size
  doc: '(default: 4000, i.e. +/- 2000 from the TSS)'
  type: long
  inputBinding:
    prefix: -size
- id: dist
  doc: '<#> (Distance between promoters to consider redundant, default: 500)'
  type: boolean
  inputBinding:
    prefix: -dist
- id: offset
  doc: <#> (offset of the first base, i.e. -1000 for 1kb upstream)
  type: boolean
  inputBinding:
    prefix: -offset
outputs: []
cwlVersion: v1.1
baseCommand:
- loadPromoters.pl
