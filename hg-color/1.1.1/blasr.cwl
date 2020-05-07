class: CommandLineTool
id: blasr.cwl
inputs:
- id: leftmost
  doc: ': report an alignment which has the best alignmentscore and has the smallest
    mapping coordinate in any reference.'
  type: string
  inputBinding:
    position: 0
- id: ignore_hq_regions
  doc: (false)Ignore any hq regions in the region table.
  type: boolean
  inputBinding:
    prefix: --ignoreHQRegions
- id: place_repeats_randomly
  doc: (false)
  type: boolean
  inputBinding:
    prefix: --placeRepeatsRandomly
- id: allow_adjacent_indels
  doc: When specified, adjacent insertion or deletions are allowed. Otherwise, adjacent  insertion
    and deletions are merged into one operation.  Using quality values  to guide pairwise
    alignments may dictate that the higher probability alignment  contains adjacent
    insertions or deletions.  Current tools such as GATK do not permit this and so
    they are not reported by default.
  type: boolean
  inputBinding:
    prefix: --allowAdjacentIndels
- id: fast_sdp
  doc: (false) Use a fast heuristic algorithm to speed up sparse dynamic programming.
  type: boolean
  inputBinding:
    prefix: --fastSDP
- id: max_score
  doc: (-200) Maximum score to output (high is bad, negative good).
  type: string
  inputBinding:
    prefix: --maxScore
- id: min_alnlength
  doc: (0) Report alignments only if their lengths are greater than minAlnLength.
  type: boolean
  inputBinding:
    prefix: --minAlnLength
- id: min_pct_similarity
  doc: (0) Report alignments only if their percentage similarity is greater than minPctSimilarity.
  type: boolean
  inputBinding:
    prefix: --minPctSimilarity
- id: min_pct_accuracy
  doc: (0) Report alignments only if their percentage accuracy is greater than minAccuracy.
  type: boolean
  inputBinding:
    prefix: --minPctAccuracy
- id: nproc
  doc: (1) Align using N processes.  All large data structures such as the suffix
    array and  tuple count table are shared.
  type: string
  inputBinding:
    prefix: --nproc
- id: start
  doc: (0) Index of the first read to begin aligning. This is useful when multiple
    instances  are running on the same data, for example when on a multi-rack cluster.
  type: string
  inputBinding:
    prefix: --start
- id: stride
  doc: (1) Align one read every 'S' reads.
  type: string
  inputBinding:
    prefix: --stride
- id: subsample
  doc: (0) Proportion of reads to randomly subsample (expressed as a decimal) and
    align.
  type: boolean
  inputBinding:
    prefix: --subsample
- id: hole_numbers
  doc: When specified, only align reads whose ZMW hole numbers are in LIST. LIST is
    a comma-delimited string of ranges, such as '1,2,3,10-13'. This option only works
    when reads are in bam, bax.h5 or plx.h5 format.
  type: string
  inputBinding:
    prefix: --holeNumbers
outputs: []
cwlVersion: v1.1
baseCommand:
- blasr
