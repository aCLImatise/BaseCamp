class: CommandLineTool
id: bogart.cwl
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
- id: in_rs
  doc: Remove edges to spur reads from best overlap graph.
  type: boolean?
  inputBinding:
    prefix: -RS
- id: in_ns
  doc: Don't seed promiscuous unitigs with suspicious reads.
  type: boolean?
  inputBinding:
    prefix: -NS
- id: in_cs
  doc: Don't place contained reads in singleton unitigs.
  type: boolean?
  inputBinding:
    prefix: -CS
- id: in_rw
  doc: Remove weak overlaps, those in the lower t fraction of erates per overlap end.
  type: string?
  inputBinding:
    prefix: -RW
- id: in_join_promiscuous_unitigs
  doc: Join promiscuous unitigs using unused best edges.
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_sr
  doc: "Shatter repeats.  Enabled with -R and -E; if neither are supplied,\nrepeat\
    \ fragments are promoted to singleton unitigs (unless -DP)."
  type: boolean?
  inputBinding:
    prefix: -SR
- id: in_shatter_repeats_rebuild
  doc: Shatter repeats, rebuild
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_shatter_repeats_extend
  doc: Shatter repeats, extend unique unitigs
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_dp
  doc: "When -R or -E, don't promote shattered leftovers to unitigs.\nThis WILL cause\
    \ CGW to fail; diagnostic only."
  type: boolean?
  inputBinding:
    prefix: -DP
- id: in_rl
  doc: "Force reads below 'len' bases to be singletons.\nThis WILL cause CGW to fail;\
    \ diagnostic only."
  type: string?
  inputBinding:
    prefix: -RL
- id: in_threads
  doc: "Use N compute threads during repeat detection.\n0 - use OpenMP default (default)\n\
    1 - use one thread"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_no_more_fraction
  doc: no more than 0.020 fraction (2.0%) error
  type: long?
  inputBinding:
    prefix: -eg
- id: in_no_more_errors
  doc: no more than 2 errors (useful with short reads)
  type: long?
  inputBinding:
    prefix: -Eg
- id: in_no_more_when
  doc: no more than 0.045 fraction (4.5%) error when bubble popping and repeat splitting
  type: long?
  inputBinding:
    prefix: -em
- id: in_no_more_r
  doc: no more than r errors (useful with short reads)
  type: long?
  inputBinding:
    prefix: -Em
- id: in_el
  doc: no shorter than 40 bases; AS_OVERLAP_MIN_LEN
  type: long?
  inputBinding:
    prefix: -el
- id: in_use_most_gigabytes
  doc: Use at most 'gb' gigabytes of memory for storing overlaps.
  type: string?
  inputBinding:
    prefix: -M
- id: in_load_most_overlaps
  doc: Load at most 'num' overlaps per read.
  type: long?
  inputBinding:
    prefix: -N
- id: in_create
  doc: Only create the overlap graph, save to disk and quit.
  type: boolean?
  inputBinding:
    prefix: -create
- id: in_save
  doc: Save the overlap graph to disk, and continue.
  type: boolean?
  inputBinding:
    prefix: -save
- id: in_enable_loggingdebugging_specific
  doc: enable logging/debugging for a specific component.
  type: string?
  inputBinding:
    prefix: -D
- id: in_disable_loggingdebugging_specific
  doc: disable logging/debugging for a specific component.
  type: string?
  inputBinding:
    prefix: -d
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
  doc: setParentAndHang
  type: string
  inputBinding:
    position: 8
- id: in_stderr
  doc: No output prefix name (-o option) supplied.
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bogart
