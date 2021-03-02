class: CommandLineTool
id: flankBed.cwl
inputs:
- id: in_create_flanking_intervals
  doc: "Create flanking interval(s) using -b base pairs in each direction.\n- (Integer)\
    \ or (Float, e.g. 0.1) if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_flank_start_start
  doc: "The number of base pairs that a flank should start from\norig. start coordinate.\n\
    - (Integer) or (Float, e.g. 0.1) if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_flank_end_end
  doc: "The number of base pairs that a flank should end from\norig. end coordinate.\n\
    - (Integer) or (Float, e.g. 0.1) if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_define_l_r_based
  doc: "Define -l and -r based on strand.\nE.g. if used, -l 500 for a negative-stranded\
    \ feature,\nit will start the flank 500 bp downstream.  Default = false."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_pct
  doc: "Define -l and -r as a fraction of the feature's length.\nE.g. if used on a\
    \ 1000bp feature, -l 0.50,\nwill add 500 bp \"upstream\".  Default = false."
  type: boolean?
  inputBinding:
    prefix: -pct
- id: in_header
  doc: the header from the input file prior to results.
  type: File?
  inputBinding:
    prefix: -header
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flank
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- flankBed
