class: CommandLineTool
id: buildUnitigs.cwl
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
- id: u
  doc: Enable EXPERIMENTAL short unitig merging (aka bubble popping).
  type: boolean
  inputBinding:
    prefix: -U
- id: j
  doc: Enable EXPERIMENTAL long unitig joining.
  type: boolean
  inputBinding:
    prefix: -J
- id: b
  doc: Break promisciuous unitigs at unitig intersection points
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: 7       Break a unitig if a region has more than 7 bad mates
  type: boolean
  inputBinding:
    prefix: -m
- id: e
  doc: 0.015   no more than 0.015 fraction (1.5%) error
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: 0       no more than 0 errors
  type: boolean
  inputBinding:
    prefix: -E
- id: d
  doc: enable logging/debugging for a specific component. overlapQuality overlapsUsed
    chunkGraph intersections populate intersectionBreaking intersectionBubbles intersectionBubblesDebug
    intersectionJoining intersectionJoiningDebug containedPlacement happiness intermediateUnitigs
    mateSplitAnalysis mateSplitDiscontinuous mateSplitUnhappyContains mateSplitCoveragePlot
    stderr
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- buildUnitigs
