class: CommandLineTool
id: slncky.v1.0.cwl
inputs:
- id: in_config
  doc: "path to assembly.config file. default uses config file\nin same directory\
    \ as slncky"
  type: File?
  inputBinding:
    prefix: --config
- id: in_no_orth_search
  doc: "flag if you only want to filter lncs but don't want to\nsearch for orthologs"
  type: boolean?
  inputBinding:
    prefix: --no_orth_search
- id: in_no_filter
  doc: "flag if you don't want lncs to be filtered before\nsearching for ortholog"
  type: boolean?
  inputBinding:
    prefix: --no_filter
- id: in_overwrite
  doc: forces overwrite of out_prefix.bed
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_threads
  doc: number of threads. default = 5
  type: long?
  inputBinding:
    prefix: --threads
- id: in_min_overlap
  doc: "remove any transcript that overlap annotated coding\ngene > min_overlap%.\
    \ default = 0%"
  type: long?
  inputBinding:
    prefix: --min_overlap
- id: in_min_cluster
  doc: min size of duplication clusters to remove. default=2
  type: long?
  inputBinding:
    prefix: --min_cluster
- id: in_min_coding
  doc: "min exonic identity to filter out transcript that\naligns to orthologous coding\
    \ gene. default is set by\nlearning coding alignment distribution from data"
  type: long?
  inputBinding:
    prefix: --min_coding
- id: in_no_overlap
  doc: flag if you don't want to overlap with coding
  type: boolean?
  inputBinding:
    prefix: --no_overlap
- id: in_no_collapse
  doc: flag if you don't want to collapse isoforms
  type: boolean?
  inputBinding:
    prefix: --no_collapse
- id: in_no_dup
  doc: flag if don't want to align to duplicates
  type: boolean?
  inputBinding:
    prefix: --no_dup
- id: in_no_self
  doc: flag if you don't want to self-align for duplicates
  type: boolean?
  inputBinding:
    prefix: --no_self
- id: in_no_coding
  doc: flag if you don't want to align to orthologous coding
  type: boolean?
  inputBinding:
    prefix: --no_coding
- id: in_min_noncoding
  doc: "min exonic identity to filter out transcript that\naligns to orthologous noncoding\
    \ gene. default=0"
  type: long?
  inputBinding:
    prefix: --min_noncoding
- id: in_no_bg
  doc: "flag if you don't want to compare lnc-to-ortholog\nalignments to a background.\
    \ This flag may be useful if\nyou want to do a 'quick-and-dirty' run of the ortholog\n\
    search."
  type: boolean?
  inputBinding:
    prefix: --no_bg
- id: in_no_orf
  doc: flag if you don't want to search for orfs
  type: boolean?
  inputBinding:
    prefix: --no_orf
- id: in_bed_tools
  doc: path to bedtools
  type: File?
  inputBinding:
    prefix: --bedtools
- id: in_lift_over
  doc: path to liftOver
  type: File?
  inputBinding:
    prefix: --liftover
- id: in_min_match
  doc: minMatch parameter for liftover. default=0.1
  type: long?
  inputBinding:
    prefix: --minMatch
- id: in_pad
  doc: "# of basepairs to search up- and down-stream when\nlifting over lnc to ortholog"
  type: string?
  inputBinding:
    prefix: --pad
- id: in_last_z
  doc: path to lastz
  type: File?
  inputBinding:
    prefix: --lastz
- id: in_gap_extend
  doc: "flag for if you want slncky to create a website\nvisualizing results\n"
  type: string?
  inputBinding:
    prefix: --gap_extend
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
- id: in_out_prefix
  doc: out_prefix
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- slncky.v1.0
