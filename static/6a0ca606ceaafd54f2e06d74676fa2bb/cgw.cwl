class: CommandLineTool
id: cgw.cwl
inputs:
- id: in_do_cleanup_scaffolds
  doc: Don't cleanup scaffolds
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_debug
  doc: Debug
  type: string?
  inputBinding:
    prefix: -D
- id: in_output_overlap_edges
  doc: output overlap only contig edges
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_microhet_score_probability
  doc: Microhet score probability cutoff
  type: string?
  inputBinding:
    prefix: -e
- id: in_strongly_enforce_set
  doc: "strongly enforce unique/repeat flag set in unitig, default if not set is to\
    \ still\nallow those marked unique to be demoted due to Repeat Branch Pattern\
    \ or being\ntoo small"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_gkp_store_path
  doc: gkp Store path (required)
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_generate_output_cgw
  doc: Don't generate output (cgw or cam)
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_gg
  doc: Don't destroy consensus on output (ctgcns will do nothing)
  type: boolean?
  inputBinding:
    prefix: -GG
- id: in_ignore_chaff_unitigs
  doc: ignore chaff unitigs
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_set_max_coverage_stat_microhet
  doc: Set max coverage stat for microhet determination of non-uniqueness (default
    -1)
  type: long?
  inputBinding:
    prefix: -i
- id: in_set_min_coverage
  doc: Set min coverage stat for definite uniqueness
  type: long?
  inputBinding:
    prefix: -j
- id: in_allow_kicking_contig
  doc: "Allow kicking out a contig placed in a scaffold by mate pairs that has no\
    \ overlaps\nto both its left and right neighbor contigs."
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_set_max_coverage_stat_possible
  doc: Set max coverage stat for possible uniqueness
  type: long?
  inputBinding:
    prefix: -k
- id: in_interleaved_scaffold_merging
  doc: don't do interleaved scaffold merging
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_number_recompute_default
  doc: Number of mate samples to recompute an insert size, default is 100
  type: long?
  inputBinding:
    prefix: -m
- id: in_restart_checkpoint_see
  doc: restart from checkpoint location 'ckp' (see the timing file)
  type: File?
  inputBinding:
    prefix: -N
- id: in_output_name_required
  doc: Output Name (required)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_how_place_closure
  doc: "how to place closure reads.\n0 - place at first location found\n1 - place\
    \ at best gap\n2 - allow to be placed in multiple gaps"
  type: long?
  inputBinding:
    prefix: -P
- id: in_restart_checkpoint_file
  doc: restart from checkpoint file number 'ckp'
  type: long?
  inputBinding:
    prefix: -R
- id: in_repeat_resolution_level
  doc: repeat resolution level
  type: string?
  inputBinding:
    prefix: -r
- id: in_place_frags_fraction
  doc: "place all frags in singly-placed surrogates if at least fraction <x> can be\
    \ placed\ntwo special cases:\nif <t> = -1, place all frags in singly-placed surrogates\
    \ aggressively\n(which really mean t = 0.0, but triggers a better algorithm)\n\
    if <t> =  0, do not resolve surrogate fragments"
  type: double?
  inputBinding:
    prefix: -S
- id: in_stone_throwing_level
  doc: stone throwing level
  type: string?
  inputBinding:
    prefix: -s
- id: in_shatter
  doc: "Set threshold for shattering scaffolds when loading from checkpoint. Any contigs\n\
    connected to a scaffold only by edges with less weight than the threshold will\
    \ be\nsplit into a new scaffold (default OFF)"
  type: string?
  inputBinding:
    prefix: -shatter
- id: in_missing_mate
  doc: "Set threshold (0-1) for the percentage of mates (out of total) that are allowed\
    \ to be\nmissing when attempting a scaffold merge (default 0). A value of -1 will\
    \ ignore all\nmissing mates"
  type: long?
  inputBinding:
    prefix: -missingMate
- id: in_min_merge_weight
  doc: Only use weight w or better edges for merging scaffolds.
  type: string?
  inputBinding:
    prefix: -minmergeweight
- id: in_recompute_gaps
  doc: if loading a checkpoint, recompute gaps, merging contigs and splitting low
    weight scaffolds.
  type: boolean?
  inputBinding:
    prefix: -recomputegaps
- id: in_reload_mates
  doc: If loading a checkpoint, also load any new mates from gkpStore.
  type: boolean?
  inputBinding:
    prefix: -reloadmates
- id: in_inserting_rocksstones_try
  doc: "after inserting rocks/stones try shifting contig positions back to their original\
    \ location\nwhen computing overlaps to see if they overlap with the rock/stone\
    \ and allow them to merge\nif they do"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_load_overlaps_bog
  doc: load these overlaps (from BOG) into the scaffold graph
  type: File?
  inputBinding:
    prefix: -u
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_demote_singleton_scaffolds
  doc: Don't demote singleton scaffolds
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_turn_demotes_unitigs
  doc: Turn on Check for Repeat Branch Pattern (demotes some unique unitigs to repeat)
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgw
