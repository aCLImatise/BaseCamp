class: CommandLineTool
id: cgw.cwl
inputs:
- id: c
  doc: Don't cleanup scaffolds
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: Debug
  type: string
  inputBinding:
    prefix: -D
- id: e
  doc: output overlap only contig edges
  type: boolean
  inputBinding:
    prefix: -E
- id: e
  doc: Microhet score probability cutoff
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: strongly enforce unique/repeat flag set in unitig, default if not set is to
    still allow those marked unique to be demoted due to Repeat Branch Pattern or
    being too small
  type: boolean
  inputBinding:
    prefix: -F
- id: g
  doc: gkp Store path (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: g
  doc: Don't generate output (cgw or cam)
  type: boolean
  inputBinding:
    prefix: -G
- id: gg
  doc: Don't destroy consensus on output (ctgcns will do nothing)
  type: boolean
  inputBinding:
    prefix: -GG
- id: i
  doc: ignore chaff unitigs
  type: boolean
  inputBinding:
    prefix: -I
- id: i
  doc: Set max coverage stat for microhet determination of non-uniqueness (default
    -1)
  type: string
  inputBinding:
    prefix: -i
- id: j
  doc: Set min coverage stat for definite uniqueness
  type: string
  inputBinding:
    prefix: -j
- id: k
  doc: Allow kicking out a contig placed in a scaffold by mate pairs that has no overlaps
    to both its left and right neighbor contigs.
  type: boolean
  inputBinding:
    prefix: -K
- id: k
  doc: Set max coverage stat for possible uniqueness
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: don't do interleaved scaffold merging
  type: boolean
  inputBinding:
    prefix: -M
- id: m
  doc: Number of mate samples to recompute an insert size, default is 100
  type: long
  inputBinding:
    prefix: -m
- id: n
  doc: restart from checkpoint location 'ckp' (see the timing file)
  type: string
  inputBinding:
    prefix: -N
- id: o
  doc: Output Name (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: how to place closure reads. 0 - place at first location found 1 - place at
    best gap 2 - allow to be placed in multiple gaps
  type: long
  inputBinding:
    prefix: -P
- id: r
  doc: restart from checkpoint file number 'ckp'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: repeat resolution level
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: 'place all frags in singly-placed surrogates if at least fraction <x> can be
    placed two special cases: if <t> = -1, place all frags in singly-placed surrogates
    aggressively (which really mean t = 0.0, but triggers a better algorithm) if <t>
    =  0, do not resolve surrogate fragments'
  type: string
  inputBinding:
    prefix: -S
- id: s
  doc: stone throwing level
  type: string
  inputBinding:
    prefix: -s
- id: shatter
  doc: Set threshold for shattering scaffolds when loading from checkpoint. Any contigs
    connected to a scaffold only by edges with less weight than the threshold will
    be split into a new scaffold (default OFF)
  type: string
  inputBinding:
    prefix: -shatter
- id: missing_mate
  doc: Set threshold (0-1) for the percentage of mates (out of total) that are allowed
    to be missing when attempting a scaffold merge (default 0). A value of -1 will
    ignore all missing mates
  type: string
  inputBinding:
    prefix: -missingMate
- id: min_merge_weight
  doc: Only use weight w or better edges for merging scaffolds.
  type: string
  inputBinding:
    prefix: -minmergeweight
- id: recompute_gaps
  doc: if loading a checkpoint, recompute gaps, merging contigs and splitting low
    weight scaffolds.
  type: boolean
  inputBinding:
    prefix: -recomputegaps
- id: reload_mates
  doc: If loading a checkpoint, also load any new mates from gkpStore.
  type: boolean
  inputBinding:
    prefix: -reloadmates
- id: u
  doc: after inserting rocks/stones try shifting contig positions back to their original
    location when computing overlaps to see if they overlap with the rock/stone and
    allow them to merge if they do
  type: boolean
  inputBinding:
    prefix: -U
- id: u
  doc: load these overlaps (from BOG) into the scaffold graph
  type: File
  inputBinding:
    prefix: -u
- id: v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: z
  doc: Don't demote singleton scaffolds
  type: boolean
  inputBinding:
    prefix: -Z
- id: z
  doc: Turn on Check for Repeat Branch Pattern (demotes some unique unitigs to repeat)
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- cgw
