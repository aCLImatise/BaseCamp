class: CommandLineTool
id: hgGcPercent.cwl
inputs:
- id: in_win
  doc: '- change windows size (default 20000)'
  type: long
  inputBinding:
    prefix: -win
- id: in_no_load
  doc: '- do not load mysql table - create bed file'
  type: boolean
  inputBinding:
    prefix: -noLoad
- id: in_file
  doc: '- output to <filename> (stdout OK) (implies -noLoad)'
  type: File
  inputBinding:
    prefix: -file
- id: in_chr
  doc: '- process only chrN from the nibDir'
  type: string
  inputBinding:
    prefix: -chr
- id: in_no_random
  doc: '- ignore randome chromosomes from the nibDir'
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: in_no_dots
  doc: '- do not display ... progress during processing'
  type: boolean
  inputBinding:
    prefix: -noDots
- id: in_do_gaps
  doc: '- process gaps correctly (default: gaps are not counted as GC)'
  type: boolean
  inputBinding:
    prefix: -doGaps
- id: in_wig_out
  doc: '- output wiggle ascii data ready to pipe to wigEncode'
  type: boolean
  inputBinding:
    prefix: -wigOut
- id: in_overlap
  doc: '- overlap windows by N bases (default 0)'
  type: long
  inputBinding:
    prefix: -overlap
- id: in_verbose
  doc: '- display details to stderr during processing'
  type: string
  inputBinding:
    prefix: -verbose
- id: in_bed_region_in
  doc: Read in a bed file for GC content in specific regions and write to bedRegionsOut
  type: File
  inputBinding:
    prefix: -bedRegionIn
- id: in_bed_region_out
  doc: Write a bed file of GC content in specific regions from bedRegionIn
  type: File
  inputBinding:
    prefix: -bedRegionOut
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: '- output to <filename> (stdout OK) (implies -noLoad)'
  type: File
  outputBinding:
    glob: $(inputs.in_file)
cwlVersion: v1.1
baseCommand:
- hgGcPercent
