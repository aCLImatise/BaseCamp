class: CommandLineTool
id: ../../../tab2feature_gxt.pl.bak.cwl
inputs:
- id: name_chromosome_track
  doc: ':          Name of the chromosome track (default: Features )'
  type: string
  inputBinding:
    prefix: -n
- id: _organism
  doc: ':           Organism'
  type: string
  inputBinding:
    prefix: -o
- id: gv
  doc: ':          Genome Version (default: NA)'
  type: string
  inputBinding:
    prefix: -gv
- id: track_description_tabs
  doc: ':          Track description (Tabs will be converted to spaces, default: empty)'
  type: string
  inputBinding:
    prefix: -d
- id: cs
  doc: ':         Fix the max color for features that contain words from the list
    to colors specified in the list. The format of list is: <str1;color1;...> for
    specifying that features whose name contain str1 are set to color1'
  type: string
  inputBinding:
    prefix: -cs
- id: zero_c
  doc: ':       Fix the zero color intensity for all features to be num'
  type: string
  inputBinding:
    prefix: -zeroc
- id: minc
  doc: ':        Fix the min color intensity for all features to be num'
  type: string
  inputBinding:
    prefix: -minc
- id: max_c
  doc: ':        Fix the max color intensity for all features to be num'
  type: string
  inputBinding:
    prefix: -maxc
- id: display_mode_types
  doc: ':           Display mode (Full/Packed/Dense/By Types) (default: By Types)'
  type: string
  inputBinding:
    prefix: -m
- id: location_display_mode
  doc: ':           Location Display mode (Color gradient/Filled box/Unfilled box/Filled
    oval/Unfilled oval) (default: Color gradient)'
  type: string
  inputBinding:
    prefix: -l
- id: lh
  doc: ':          Location height (default: 10)'
  type: string
  inputBinding:
    prefix: -lh
- id: fixed_order
  doc: ':       Use a fixed ordering on the feature types'
  type: boolean
  inputBinding:
    prefix: -fixed_order
- id: dt
  doc: ':                Display track information'
  type: boolean
  inputBinding:
    prefix: -dt
- id: fp
  doc: ':          Footer pixels (spacing below the track).'
  type: string
  inputBinding:
    prefix: -fp
- id: af
  doc: ':                Add the id of the feature to the name/id of the feature'
  type: boolean
  inputBinding:
    prefix: -af
- id: a_i
  doc: ':                Add a counter id to each instance'
  type: boolean
  inputBinding:
    prefix: -ai
- id: _feature_vector
  doc: ':                 Feature vector'
  type: boolean
  inputBinding:
    prefix: -v
- id: chr_starts
  doc: 'Chromosome start locations (optional format: <chr_name>;<start>...)'
  type: string
  inputBinding:
    prefix: -chr_starts
- id: chr_ends
  doc: 'Chromosome end locations (optional format: <chr_name>;<end>...)'
  type: string
  inputBinding:
    prefix: -chr_ends
outputs: []
cwlVersion: v1.1
baseCommand:
- tab2feature_gxt.pl.bak
