class: CommandLineTool
id: hgGcPercent.cwl
inputs:
- id: change
  doc: size (default 20000)
  type: long
  inputBinding:
    prefix: '- change'
- id: no_load
  doc: load mysql table - create bed file
  type: string
  inputBinding:
    prefix: -noLoad
- id: output
  doc: <filename> (stdout OK) (implies -noLoad)
  type: File
  inputBinding:
    prefix: '- output'
- id: process
  doc: chrN from the nibDir
  type: string
  inputBinding:
    prefix: '- process'
- id: no_random
  doc: chromosomes from the nibDir
  type: string
  inputBinding:
    prefix: -noRandom
- id: no_dots
  doc: display ... progress during processing
  type: string
  inputBinding:
    prefix: -noDots
- id: process
  doc: 'correctly (default: gaps are not counted as GC)'
  type: string
  inputBinding:
    prefix: '- process'
- id: output
  doc: ascii data ready to pipe to wigEncode
  type: string
  inputBinding:
    prefix: '- output'
- id: overlap
  doc: by N bases (default 0)
  type: string
  inputBinding:
    prefix: '- overlap'
- id: display
  doc: to stderr during processing
  type: string
  inputBinding:
    prefix: '- display'
- id: bed_region_in
  doc: Read in a bed file for GC content in specific regions and write to bedRegionsOut
  type: string
  inputBinding:
    prefix: -bedRegionIn
- id: bed_region_out
  doc: Write a bed file of GC content in specific regions from bedRegionIn
  type: string
  inputBinding:
    prefix: -bedRegionOut
outputs: []
cwlVersion: v1.1
baseCommand:
- hgGcPercent
