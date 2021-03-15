class: CommandLineTool
id: tab2feature_gxt.pl.cwl
inputs:
- id: in_name_chromosome_features
  doc: ':          Name of the chromosome track (default: Features )'
  type: string?
  inputBinding:
    prefix: -n
- id: in__organism
  doc: ':           Organism'
  type: string?
  inputBinding:
    prefix: -o
- id: in_gv
  doc: ':          Genome Version (default: NA)'
  type: string?
  inputBinding:
    prefix: -gv
- id: in_track_description_tabs
  doc: ':          Track description (Tabs will be converted to spaces, default: empty)'
  type: string?
  inputBinding:
    prefix: -d
- id: in_cs
  doc: ":         Fix the max color for features that contain words from the list\
    \ to colors\nspecified in the list. The format of list is: <str1;color1;...>\n\
    for specifying that features whose name contain str1 are set to color1"
  type: long?
  inputBinding:
    prefix: -cs
- id: in_zero_c
  doc: ':       Fix the zero color intensity for all features to be num'
  type: long?
  inputBinding:
    prefix: -zeroc
- id: in_minc
  doc: ':        Fix the min color intensity for all features to be num'
  type: long?
  inputBinding:
    prefix: -minc
- id: in_max_c
  doc: ':        Fix the max color intensity for all features to be num'
  type: long?
  inputBinding:
    prefix: -maxc
- id: in_display_mode_fullpackeddenseby
  doc: ':           Display mode (Full/Packed/Dense/By Types) (default: By Types)'
  type: string?
  inputBinding:
    prefix: -m
- id: in_location_display_mode
  doc: ':           Location Display mode (Color gradient/Filled box/Unfilled box/Filled
    oval/Unfilled oval) (default: Color gradient)'
  type: string?
  inputBinding:
    prefix: -l
- id: in_lh
  doc: ':          Location height (default: 10)'
  type: long?
  inputBinding:
    prefix: -lh
- id: in_fixed_order
  doc: ':       Use a fixed ordering on the feature types'
  type: boolean?
  inputBinding:
    prefix: -fixed_order
- id: in_dt
  doc: ':                Display track information'
  type: boolean?
  inputBinding:
    prefix: -dt
- id: in_fp
  doc: ':          Footer pixels (spacing below the track).'
  type: long?
  inputBinding:
    prefix: -fp
- id: in_af
  doc: ':                Add the id of the feature to the name/id of the feature'
  type: boolean?
  inputBinding:
    prefix: -af
- id: in_a_i
  doc: ':                Add a counter id to each instance'
  type: boolean?
  inputBinding:
    prefix: -ai
- id: in__feature_vector
  doc: ':                 Feature vector'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_chr_starts
  doc: 'Chromosome start locations (optional format: <chr_name>;<start>...)'
  type: string?
  inputBinding:
    prefix: -chr_starts
- id: in_chr_ends
  doc: 'Chromosome end locations (optional format: <chr_name>;<end>...)'
  type: string?
  inputBinding:
    prefix: -chr_ends
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tab2feature_gxt.pl
