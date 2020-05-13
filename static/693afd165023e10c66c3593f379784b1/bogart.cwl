class: CommandLineTool
id: bogart.cwl
inputs:
- id: s
  doc: Mandatory path to an existing seqStore.
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: Mandatory path to an existing ovlStore.
  type: string
  inputBinding:
    prefix: -O
- id: t
  doc: Mandatory path to an output tigStore (can exist or not).
  type: string
  inputBinding:
    prefix: -T
- id: o
  doc: Mandatory prefix for the output files.
  type: string
  inputBinding:
    prefix: -o
- id: threads
  doc: Use at most T compute threads.
  type: string
  inputBinding:
    prefix: -threads
- id: m
  doc: Use at most 'gb' gigabytes of memory.
  type: string
  inputBinding:
    prefix: -M
- id: save
  doc: Save the overlap graph to disk, and continue (not implemented).
  type: boolean
  inputBinding:
    prefix: -save
- id: gs
  doc: Genome size in bases.
  type: boolean
  inputBinding:
    prefix: -gs
- id: mr
  doc: Force reads below 'len' bases to be singletons.
  type: string
  inputBinding:
    prefix: -mr
- id: mo
  doc: Ignore overlaps shorter than 'len' bases.
  type: string
  inputBinding:
    prefix: -mo
- id: mi
  doc: Create unitigs from contig intersections of at least 'len' bases.
  type: string
  inputBinding:
    prefix: -mi
- id: mp
  doc: Create unitigs from contig intersections with at most 'num' placements.
  type: string
  inputBinding:
    prefix: -mp
- id: no_filter
  doc: "[coverageGap],[highError],[lopsided],[spur] Disable filtering of: coverageGap\
    \ - reads that have a suspicious lack of overlaps in the middle highError   -\
    \ overlaps that have error rates well outside the observed lopsided    - reads\
    \ that have unusually asymmetric best overlaps spur        - reads that have no\
    \ overlaps on one end The value supplied to -nofilter must be one word, case,\
    \ order and punctuation do not matter.  The following examples behave the same:\
    \ '-nofilter coverageGap,higherror' '-nofilter coveragegap-and-HIGHERROR'"
  type: boolean
  inputBinding:
    prefix: -nofilter
- id: eg
  doc: Do not use overlaps more than F fraction error when when finding initial best
    edges.
  type: string
  inputBinding:
    prefix: -eg
- id: em
  doc: Do not load overlaps more then F fraction error (useful only for -save).
  type: string
  inputBinding:
    prefix: -eM
- id: ca
  doc: 'Split a contig if there is an alternate path from an overlap of at least L
    bases. Default: 2100.'
  type: string
  inputBinding:
    prefix: -ca
- id: cp
  doc: 'Split a contig if there is an alternate path from an overlap at most P percent
    different from the length of the best overlap.  Default: 200.'
  type: string
  inputBinding:
    prefix: -cp
- id: dg
  doc: Use overlaps upto D standard deviations from the mean when building the best
    overlap graph.  Default 6.0.
  type: string
  inputBinding:
    prefix: -dg
- id: db
  doc: Like -dg, but for merging bubbles into primary contigs.  Default 6.0.
  type: string
  inputBinding:
    prefix: -db
- id: dr
  doc: Like -dg, but for breaking repeats.  Default 3.0.
  type: string
  inputBinding:
    prefix: -dr
- id: cov_gap_olap
  doc: Require overlaps to overlap by at least n bases.
  type: string
  inputBinding:
    prefix: -covgapolap
- id: lopsided
  doc: n      Set how lopsided reads are detected and/or treated. m = off        -
    don't detect at all (omit n parameter) m = noseed n   - detect, n% difference,
    allow edges to but don't seed overlaps with them m = nobest n   - detect, n% difference,
    exclude from bog graph completely
  type: string
  inputBinding:
    prefix: -lopsided
- id: min_olap_percent
  doc: Set a minimum overlap length, per overlap, as f*min(readAlen, readBlen)
  type: string
  inputBinding:
    prefix: -minolappercent
- id: d
  doc: enable logging/debugging for a specific component.
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: disable logging/debugging for a specific component. overlapScoring bestOverlaps
    errorProfiles optimizePositions chunkGraph buildUnitig placeUnplaced orphans splitDiscontinuous
    intermediateTigs setParentAndHang stderr
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bogart
