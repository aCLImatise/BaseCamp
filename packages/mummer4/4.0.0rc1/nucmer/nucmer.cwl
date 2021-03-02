class: CommandLineTool
id: nucmer.cwl
inputs:
- id: in_max_match
  doc: different bevahiors.
  type: string?
  inputBinding:
    prefix: --maxmatch
- id: in_mum
  doc: Use anchor matches that are unique in both the reference and query (false)
  type: boolean?
  inputBinding:
    prefix: --mum
- id: in_break_len
  doc: Set the distance an alignment extension will attempt to extend poor scoring
    regions before giving up (200)
  type: long?
  inputBinding:
    prefix: --breaklen
- id: in_min_cluster
  doc: Sets the minimum length of a cluster of matches (65)
  type: long?
  inputBinding:
    prefix: --mincluster
- id: in_diag_diff
  doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    (5)
  type: long?
  inputBinding:
    prefix: --diagdiff
- id: in_diag_factor
  doc: Set the maximum diagonal difference between two adjacent anchors in a cluster
    as a differential fraction of the gap length (0.12)
  type: long?
  inputBinding:
    prefix: --diagfactor
- id: in_no_extend
  doc: Do not perform cluster extension step (false)
  type: boolean?
  inputBinding:
    prefix: --noextend
- id: in_forward
  doc: Use only the forward strand of the Query sequences (false)
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_max_gap
  doc: Set the maximum gap between two adjacent matches in a cluster (90)
  type: long?
  inputBinding:
    prefix: --maxgap
- id: in_min_match
  doc: Set the minimum length of a single exact match (20)
  type: long?
  inputBinding:
    prefix: --minmatch
- id: in_min_align
  doc: Minimum length of an alignment, after clustering and extension (0)
  type: long?
  inputBinding:
    prefix: --minalign
- id: in_no_optimize
  doc: No alignment score optimization, i.e. if an alignment extension reaches the
    end of a sequence, it will not backtrack to optimize the alignment score and instead
    terminate the alignment at the end of the sequence (false)
  type: boolean?
  inputBinding:
    prefix: --nooptimize
- id: in_reverse
  doc: Use only the reverse complement of the Query sequences (false)
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_no_simplify
  doc: Don't simplify alignments by removing shadowed clusters. Use this option when
    aligning a sequence to itself to look for repeats (false)
  type: boolean?
  inputBinding:
    prefix: --nosimplify
- id: in_prefix
  doc: Write output to PREFIX.delta (out)
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_delta
  doc: Output delta file to PATH (instead of PREFIX.delta)
  type: File?
  inputBinding:
    prefix: --delta
- id: in_sam_short
  doc: Output SAM file to PATH, short format
  type: File?
  inputBinding:
    prefix: --sam-short
- id: in_sam_long
  doc: Output SAM file to PATH, long format
  type: File?
  inputBinding:
    prefix: --sam-long
- id: in_save
  doc: Save suffix array to files starting with PREFIX
  type: string?
  inputBinding:
    prefix: --save
- id: in_load
  doc: Load suffix array from file starting with PREFIX
  type: File?
  inputBinding:
    prefix: --load
- id: in_batch
  doc: Proceed by batch of chunks of BASES from the reference
  type: string?
  inputBinding:
    prefix: --batch
- id: in_threads
  doc: Use NUM threads (# of cores)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_full_help
  doc: Detailed help
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_ref
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_delta
  doc: Output delta file to PATH (instead of PREFIX.delta)
  type: File?
  outputBinding:
    glob: $(inputs.in_delta)
- id: out_sam_short
  doc: Output SAM file to PATH, short format
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_short)
- id: out_sam_long
  doc: Output SAM file to PATH, long format
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_long)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- nucmer
