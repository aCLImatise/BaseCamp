class: CommandLineTool
id: slncky.v1.0.cwl
inputs:
- id: in_no_orth_search
  doc: flag if you only want to filter lncs but don't want to
  type: boolean
  inputBinding:
    prefix: --no_orth_search
- id: in_no_filter
  doc: flag if you don't want lncs to be filtered before
  type: boolean
  inputBinding:
    prefix: --no_filter
- id: in_no_bg
  doc: flag if you don't want to compare lnc-to-ortholog
  type: boolean
  inputBinding:
    prefix: --no_bg
- id: in_no_orf
  doc: flag if you don't want to search for orfs
  type: boolean
  inputBinding:
    prefix: --no_orf
- id: in_bed_tools
  doc: path to bedtools
  type: File
  inputBinding:
    prefix: --bedtools
- id: in_lift_over
  doc: path to liftOver
  type: File
  inputBinding:
    prefix: --liftover
- id: in_min_match
  doc: minMatch parameter for liftover. default=0.1
  type: long
  inputBinding:
    prefix: --minMatch
- id: in_pad
  doc: '# of basepairs to search up- and down-stream when'
  type: string
  inputBinding:
    prefix: --pad
- id: in_web
  doc: flag for if you want slncky to create a website
  type: boolean
  inputBinding:
    prefix: --web
- id: in_config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: in_bed_file
  doc: bed12 file of transcripts
  type: string
  inputBinding:
    position: 0
- id: in_assembly
  doc: assembly
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- slncky.v1.0
