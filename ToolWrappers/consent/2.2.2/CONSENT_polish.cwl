class: CommandLineTool
id: CONSENT_polish.cwl
inputs:
- id: in_window_size
  doc: ':      Size of the windows to process. (default: 500)'
  type: long?
  inputBinding:
    prefix: --windowSize
- id: in_min_support
  doc: ':      Minimum support to consider a window for correction. (default: 1)'
  type: long?
  inputBinding:
    prefix: --minSupport
- id: in_max_support
  doc: ':      Maximum number of overlaps to include in a pile. (default: 20,000)'
  type: long?
  inputBinding:
    prefix: --maxSupport
- id: in_mer_size
  doc: ':         k-mer size for chaining and polishing. (default: 9)'
  type: long?
  inputBinding:
    prefix: --merSize
- id: in_solid
  doc: ':           Minimum number of occurrences to consider a k-mer as solid during
    polishing. (default: 4)'
  type: long?
  inputBinding:
    prefix: --solid
- id: in_anchor_support
  doc: ':   Minimum number of sequences supporting (Ai) - (Ai+1) to keep the two anchors
    in the chaining. (default: 8)'
  type: long?
  inputBinding:
    prefix: --anchorSupport
- id: in_min_anchors
  doc: ':      Minimum number of anchors in a window to allow consensus computation.
    (default: 10)'
  type: long?
  inputBinding:
    prefix: --minAnchors
- id: in_window_overlap
  doc: ':   Overlap size between consecutive windows. (default: 50)'
  type: long?
  inputBinding:
    prefix: --windowOverlap
- id: in_nproc
  doc: ':           Number of processes to run in parallel (default: number of cores).'
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_minimap_index
  doc: ':    Split minimap2 index every INT input bases (default: 500M).'
  type: long?
  inputBinding:
    prefix: --minimapIndex
- id: in_tmpdir
  doc: ':    Path where to store the temporary files (default: working directory).'
  type: File?
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/consent:2.2.2--h8b12597_0
cwlVersion: v1.1
baseCommand:
- CONSENT-polish
