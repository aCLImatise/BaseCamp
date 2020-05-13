class: CommandLineTool
id: findHiCCompartments.pl.cwl
inputs:
- id: opp
  doc: (return inactive, not active regions)
  type: boolean
  inputBinding:
    prefix: -opp
- id: thresh
  doc: '<#> (threshold for active regions, default: 0)'
  type: boolean
  inputBinding:
    prefix: -thresh
- id: bg
  doc: '<2nd PC1.txt file> (for differential domains) -diff <#> (difference threshold,
    default: 0.5)'
  type: boolean
  inputBinding:
    prefix: -bg
- id: corr
  doc: (for differential domains)
  type: string
  inputBinding:
    prefix: -corr
- id: corr_diff
  doc: '<#> (correlation threshold, default: 0.4)'
  type: boolean
  inputBinding:
    prefix: -corrDiff
- id: min
  doc: '<#> (minimum size of domains, default: 100000)'
  type: boolean
  inputBinding:
    prefix: -min
outputs: []
cwlVersion: v1.1
baseCommand:
- findHiCCompartments.pl
