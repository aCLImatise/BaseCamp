class: CommandLineTool
id: ../../../hgGcPercent.cwl
inputs:
- id: win
  doc: '- change windows size (default 20000)'
  type: long
  inputBinding:
    prefix: -win
- id: no_load
  doc: '- do not load mysql table - create bed file'
  type: boolean
  inputBinding:
    prefix: -noLoad
- id: file
  doc: '- output to <filename> (stdout OK) (implies -noLoad)'
  type: File
  inputBinding:
    prefix: -file
- id: chr
  doc: '- process only chrN from the nibDir'
  type: string
  inputBinding:
    prefix: -chr
- id: no_random
  doc: '- ignore randome chromosomes from the nibDir'
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: no_dots
  doc: '- do not display ... progress during processing'
  type: boolean
  inputBinding:
    prefix: -noDots
- id: do_gaps
  doc: '- process gaps correctly (default: gaps are not counted as GC)'
  type: boolean
  inputBinding:
    prefix: -doGaps
- id: wig_out
  doc: '- output wiggle ascii data ready to pipe to wigEncode'
  type: boolean
  inputBinding:
    prefix: -wigOut
- id: overlap
  doc: '- overlap windows by N bases (default 0)'
  type: string
  inputBinding:
    prefix: -overlap
- id: verbose
  doc: '- display details to stderr during processing'
  type: string
  inputBinding:
    prefix: -verbose
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
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgGcPercent
