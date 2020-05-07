class: CommandLineTool
id: bogart.cwl
inputs:
- id: o
  doc: Mandatory path to an ovlStore.
  type: boolean
  inputBinding:
    prefix: -O
- id: g
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -G
- id: t
  doc: Mandatory path to a tigStore (can exist or not).
  type: boolean
  inputBinding:
    prefix: -T
- id: o
  doc: Mandatory name for the output files
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: Target number of fragments per tigStore (consensus) partition
  type: string
  inputBinding:
    prefix: -B
- id: rs
  doc: Remove edges to spur reads from best overlap graph.
  type: boolean
  inputBinding:
    prefix: -RS
- id: ns
  doc: Don't seed promiscuous unitigs with suspicious reads.
  type: boolean
  inputBinding:
    prefix: -NS
- id: cs
  doc: Don't place contained reads in singleton unitigs.
  type: boolean
  inputBinding:
    prefix: -CS
- id: rw
  doc: Remove weak overlaps, those in the lower t fraction of erates per overlap end.
  type: string
  inputBinding:
    prefix: -RW
- id: j
  doc: Join promiscuous unitigs using unused best edges.
  type: boolean
  inputBinding:
    prefix: -J
- id: sr
  doc: Shatter repeats.  Enabled with -R and -E; if neither are supplied, repeat fragments
    are promoted to singleton unitigs (unless -DP).
  type: boolean
  inputBinding:
    prefix: -SR
- id: r
  doc: Shatter repeats, rebuild
  type: boolean
  inputBinding:
    prefix: -R
- id: e
  doc: Shatter repeats, extend unique unitigs
  type: boolean
  inputBinding:
    prefix: -E
- id: dp
  doc: When -R or -E, don't promote shattered leftovers to unitigs. This WILL cause
    CGW to fail; diagnostic only.
  type: boolean
  inputBinding:
    prefix: -DP
- id: rl
  doc: Force reads below 'len' bases to be singletons. This WILL cause CGW to fail;
    diagnostic only.
  type: string
  inputBinding:
    prefix: -RL
- id: threads
  doc: Use N compute threads during repeat detection. 0 - use OpenMP default (default)
    1 - use one thread
  type: string
  inputBinding:
    prefix: -threads
- id: eg
  doc: 0.020   no more than 0.020 fraction (2.0%) error
  type: boolean
  inputBinding:
    prefix: -eg
- id: eg
  doc: 2       no more than 2 errors (useful with short reads)
  type: boolean
  inputBinding:
    prefix: -Eg
- id: em
  doc: 0.045   no more than 0.045 fraction (4.5%) error when bubble popping and repeat
    splitting
  type: boolean
  inputBinding:
    prefix: -em
- id: em
  doc: 4       no more than r errors (useful with short reads)
  type: boolean
  inputBinding:
    prefix: -Em
- id: el
  doc: 40      no shorter than 40 bases; AS_OVERLAP_MIN_LEN
  type: boolean
  inputBinding:
    prefix: -el
- id: m
  doc: Use at most 'gb' gigabytes of memory for storing overlaps.
  type: string
  inputBinding:
    prefix: -M
- id: n
  doc: Load at most 'num' overlaps per read.
  type: string
  inputBinding:
    prefix: -N
- id: create
  doc: Only create the overlap graph, save to disk and quit.
  type: boolean
  inputBinding:
    prefix: -create
- id: save
  doc: Save the overlap graph to disk, and continue.
  type: boolean
  inputBinding:
    prefix: -save
- id: d
  doc: enable logging/debugging for a specific component.
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: disable logging/debugging for a specific component. overlapQuality overlapsUsed
    chunkGraph intersections populate intersectionBreaking intersectionBubbles intersectionBubblesDebug
    intersectionJoining intersectionJoiningDebug containedPlacement happiness intermediateUnitigs
    mateSplitAnalysis mateSplitDiscontinuous mateSplitUnhappyContains mateSplitCoveragePlot
    setParentAndHang stderr
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bogart
