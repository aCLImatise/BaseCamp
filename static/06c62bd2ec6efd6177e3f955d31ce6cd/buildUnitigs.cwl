class: CommandLineTool
id: buildUnitigs.cwl
inputs:
- id: in_mandatory_path_ovlstore
  doc: Mandatory path to an ovlStore.
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_mandatory_path_gkpstore
  doc: Mandatory path to a gkpStore.
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_mandatory_path_tigstore
  doc: Mandatory path to a tigStore (can exist or not).
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_mandatory_name_output
  doc: Mandatory name for the output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_target_number_fragments
  doc: Target number of fragments per tigStore (consensus) partition
  type: long?
  inputBinding:
    prefix: -B
- id: in_enable_experimental_short
  doc: Enable EXPERIMENTAL short unitig merging (aka bubble popping).
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_enable_experimental_long
  doc: Enable EXPERIMENTAL long unitig joining.
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_break_promisciuous_unitigs
  doc: Break promisciuous unitigs at unitig intersection points
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_break_unitig_has
  doc: Break a unitig if a region has more than 7 bad mates
  type: long?
  inputBinding:
    prefix: -m
- id: in_no_more_fraction
  doc: no more than 0.015 fraction (1.5%) error
  type: long?
  inputBinding:
    prefix: -e
- id: in_no_more_errors
  doc: no more than 0 errors
  type: long?
  inputBinding:
    prefix: -E
- id: in_enable_loggingdebugging_specific
  doc: enable logging/debugging for a specific component.
  type: string?
  inputBinding:
    prefix: -D
- id: in_overlap_quality
  doc: overlapsUsed
  type: string
  inputBinding:
    position: 0
- id: in_chunk_graph
  doc: intersections
  type: string
  inputBinding:
    position: 1
- id: in_populate
  doc: intersectionBreaking
  type: string
  inputBinding:
    position: 2
- id: in_intersection_bubbles
  doc: intersectionBubblesDebug
  type: string
  inputBinding:
    position: 3
- id: in_intersection_joining
  doc: intersectionJoiningDebug
  type: string
  inputBinding:
    position: 4
- id: in_contained_placement
  doc: happiness
  type: string
  inputBinding:
    position: 5
- id: in_intermediate_unit_igs
  doc: mateSplitAnalysis
  type: string
  inputBinding:
    position: 6
- id: in_mate_split_discontinuous
  doc: mateSplitUnhappyContains
  type: string
  inputBinding:
    position: 7
- id: in_mate_split_coverage_plot
  doc: stderr
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- buildUnitigs
