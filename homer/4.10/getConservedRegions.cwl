class: CommandLineTool
id: getConservedRegions.pl.cwl
inputs:
- id: cons
  doc: '<0.0-1.0> (phastCons score needed to define conservation island, 0=all used)
    default: 0.8'
  type: boolean
  inputBinding:
    prefix: -cons
- id: p
  doc: '[peakfile2]... (peak regions to exclude)'
  type: string
  inputBinding:
    prefix: -p
- id: keep_exons
  doc: (By default, exons are excluded)
  type: boolean
  inputBinding:
    prefix: -keepExons
outputs: []
cwlVersion: v1.1
baseCommand:
- getConservedRegions.pl
