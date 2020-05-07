class: CommandLineTool
id: nucmer.cwl
inputs:
- id: mum
  doc: Use anchor matches that are unique in both the reference and query (false)
  type: boolean
  inputBinding:
    prefix: --mum
- id: max_match
  doc: Use all anchor matches regardless of their uniqueness (false)
  type: boolean
  inputBinding:
    prefix: --maxmatch
- id: break_len
  doc: Set the distance an alignment extension will attempt to extend poor scoring
    regions before giving up (200)
  type: string
  inputBinding:
    prefix: --breaklen
- id: min_cluster
  doc: Sets the minimum length of a cluster of matches (65)
  type: string
  inputBinding:
    prefix: --mincluster
- id: diag_diff
  doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    (5)
  type: string
  inputBinding:
    prefix: --diagdiff
- id: diag_factor
  doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    as a differential fraction of the gap length (0.12)
  type: string
  inputBinding:
    prefix: --diagfactor
- id: no_extend
  doc: Do not perform cluster extension step (false)
  type: boolean
  inputBinding:
    prefix: --noextend
- id: forward
  doc: Use only the forward strand of the Query sequences (false)
  type: boolean
  inputBinding:
    prefix: --forward
- id: max_gap
  doc: Set the maximum gap between two adjacent matches in a cluster (90)
  type: string
  inputBinding:
    prefix: --maxgap
- id: min_match
  doc: Set the minimum length of a single exact match (20)
  type: string
  inputBinding:
    prefix: --minmatch
- id: min_align
  doc: Minimum length of an alignment, after clustering and extension (0)
  type: string
  inputBinding:
    prefix: --minalign
- id: no_optimize
  doc: No alignment score optimization, i.e. if an alignment extension reaches the
    end of a sequence, it will not backtrack to optimize the alignment score and instead
    terminate the alignment at the end of the sequence (false)
  type: boolean
  inputBinding:
    prefix: --nooptimize
- id: reverse
  doc: Use only the reverse complement of the Query sequences (false)
  type: boolean
  inputBinding:
    prefix: --reverse
- id: no_simplify
  doc: Don't simplify alignments by removing shadowed clusters. Use this option when
    aligning a sequence to itself to look for repeats (false)
  type: boolean
  inputBinding:
    prefix: --nosimplify
- id: prefix
  doc: Write output to PREFIX.delta (out)
  type: string
  inputBinding:
    prefix: --prefix
- id: delta
  doc: Output delta file to PATH (instead of PREFIX.delta)
  type: File
  inputBinding:
    prefix: --delta
- id: sam_short
  doc: Output SAM file to PATH, short format
  type: File
  inputBinding:
    prefix: --sam-short
- id: sam_long
  doc: Output SAM file to PATH, long format
  type: File
  inputBinding:
    prefix: --sam-long
- id: save
  doc: Save suffix array to files starting with PREFIX
  type: string
  inputBinding:
    prefix: --save
- id: load
  doc: Load suffix array from file starting with PREFIX
  type: string
  inputBinding:
    prefix: --load
- id: batch
  doc: Proceed by batch of chunks of BASES from the reference
  type: string
  inputBinding:
    prefix: --batch
- id: threads
  doc: Use NUM threads (# of cores)
  type: string
  inputBinding:
    prefix: --threads
- id: full_help
  doc: Detailed help
  type: boolean
  inputBinding:
    prefix: --full-help
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer
