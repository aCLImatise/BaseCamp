class: CommandLineTool
id: ../../../getConservedRegions.pl.cwl
inputs:
- id: peak_regions_exclude
  doc: '[peakfile2]... (peak regions to exclude)'
  type: string
  inputBinding:
    prefix: -p
- id: keep_exons
  doc: (By default, exons are excluded)
  type: boolean
  inputBinding:
    prefix: -keepExons
- id: peak_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: additional
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- getConservedRegions.pl
