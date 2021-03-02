class: CommandLineTool
id: bogart.cwl
inputs:
- id: in_mandatory_path_existing_seqstore
  doc: Mandatory path to an existing seqStore.
  type: File?
  inputBinding:
    prefix: -S
- id: in_mandatory_path_existing_ovlstore
  doc: Mandatory path to an existing ovlStore.
  type: File?
  inputBinding:
    prefix: -O
- id: in_mandatory_path_tigstore
  doc: Mandatory path to an output tigStore (can exist or not).
  type: File?
  inputBinding:
    prefix: -T
- id: in_mandatory_prefix_output
  doc: Mandatory prefix for the output files.
  type: string?
  inputBinding:
    prefix: -o
- id: in_threads
  doc: Use at most T compute threads.
  type: string?
  inputBinding:
    prefix: -threads
- id: in_use_most_gigabytes
  doc: Use at most 'gb' gigabytes of memory.
  type: string?
  inputBinding:
    prefix: -M
- id: in_gs
  doc: Genome size in bases.
  type: boolean?
  inputBinding:
    prefix: -gs
- id: in_mr
  doc: Force reads below 'len' bases to be singletons.
  type: string?
  inputBinding:
    prefix: -mr
- id: in_mo
  doc: Ignore overlaps shorter than 'len' bases.
  type: string?
  inputBinding:
    prefix: -mo
- id: in_mi
  doc: Create unitigs from contig intersections of at least 'len' bases.
  type: string?
  inputBinding:
    prefix: -mi
- id: in_mp
  doc: Create unitigs from contig intersections with at most 'num' placements.
  type: long?
  inputBinding:
    prefix: -mp
- id: in_no_filter
  doc: "[coverageGap],[highError],[lopsided],[spur]\nDisable filtering of:\ncoverageGap\
    \ - reads that have a suspicious lack of overlaps in the middle\nhighError   -\
    \ overlaps that have error rates well outside the observed\nlopsided    - reads\
    \ that have unusually asymmetric best overlaps\nspur        - reads that have\
    \ no overlaps on one end\nThe value supplied to -nofilter must be one word, case,\
    \ order and punctuation\ndo not matter.  The following examples behave the same:\n\
    '-nofilter coverageGap,higherror'\n'-nofilter coveragegap-and-HIGHERROR'"
  type: boolean?
  inputBinding:
    prefix: -nofilter
- id: in_eg
  doc: Do not use overlaps more than F fraction error when when finding initial best
    edges.
  type: string?
  inputBinding:
    prefix: -eg
- id: in_em
  doc: Do not load overlaps more then F fraction error (useful only for -save).
  type: string?
  inputBinding:
    prefix: -eM
- id: in_ep
  doc: "When deciding which overlaps to use, fall back to percentile P (0.0-1.0) if\n\
    the median error is 0.0, as commonly found in PacBio HiFi reads.  Default: 0.9"
  type: double?
  inputBinding:
    prefix: -ep
- id: in_ca
  doc: "Split a contig if there is an alternate path from an overlap of at least L\
    \ bases.\nDefault: 2100."
  type: File?
  inputBinding:
    prefix: -ca
- id: in_cp
  doc: "Split a contig if there is an alternate path from an overlap at most P percent\n\
    different from the length of the best overlap.  Default: 200."
  type: long?
  inputBinding:
    prefix: -cp
- id: in_dg
  doc: "Use overlaps upto D standard deviations from the mean when building the best\n\
    overlap graph.  Default 6.0."
  type: double?
  inputBinding:
    prefix: -dg
- id: in_db
  doc: Like -dg, but for merging bubbles into primary contigs.  Default 6.0.
  type: double?
  inputBinding:
    prefix: -db
- id: in_dr
  doc: Like -dg, but for breaking repeats.  Default 3.0.
  type: double?
  inputBinding:
    prefix: -dr
- id: in_cov_gap_type
  doc: 'Set covgap pattern: none, chimer, uncovered, deadend.'
  type: string?
  inputBinding:
    prefix: -covgaptype
- id: in_cov_gap_olap
  doc: Require overlaps to overlap by at least n bases.
  type: string?
  inputBinding:
    prefix: -covgapolap
- id: in_lopsided
  doc: "n      Set how lopsided reads are detected and/or treated.\nm = off      \
    \  - don't detect at all (omit n parameter)\nm = noseed n   - detect, n% difference,\
    \ allow edges to but don't seed overlaps with them\nm = nobest n   - detect, n%\
    \ difference, exclude from bog graph completely"
  type: string?
  inputBinding:
    prefix: -lopsided
- id: in_min_olap_percent
  doc: Set a minimum overlap length, per overlap, as f*min(readAlen, readBlen)
  type: long?
  inputBinding:
    prefix: -minolappercent
- id: in_min_reads_best
  doc: "Automatically relax overlap quality requirements if there are fewer\nthan\
    \ fraction f (0.0-1.0) reads that have two best edges.  Default: 0.9"
  type: double?
  inputBinding:
    prefix: -minreadsbest
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
- id: in_overlap_scoring
  doc: bestEdges
  type: string
  inputBinding:
    position: 0
- id: in_best_overlaps
  doc: errorProfiles
  type: string
  inputBinding:
    position: 1
- id: in_optimize_positions
  doc: chunkGraph
  type: string
  inputBinding:
    position: 2
- id: in_build_unit_ig
  doc: placeUnplaced
  type: string
  inputBinding:
    position: 3
- id: in_orphans
  doc: splitDiscontinuous
  type: string
  inputBinding:
    position: 4
- id: in_intermediate_tig_s
  doc: setParentAndHang
  type: string
  inputBinding:
    position: 5
- id: in_stderr
  doc: Unknown option '--help'.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mandatory_path_tigstore
  doc: Mandatory path to an output tigStore (can exist or not).
  type: File?
  outputBinding:
    glob: $(inputs.in_mandatory_path_tigstore)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- bogart
