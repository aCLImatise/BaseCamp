class: CommandLineTool
id: ParseAligns.cwl
inputs:
- id: in_min_align
  doc: minimum alignment length
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_dist
  doc: write distance estimates to this file
  type: File?
  inputBinding:
    prefix: --dist
- id: in_frag
  doc: write fragment sizes to this file
  type: File?
  inputBinding:
    prefix: --frag
- id: in_hist
  doc: write the fragment size histogram to FILE
  type: File?
  inputBinding:
    prefix: --hist
- id: in_sam
  doc: alignments are in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_k_aligner
  doc: alignments are in KAligner format
  type: boolean?
  inputBinding:
    prefix: --kaligner
- id: in_cover
  doc: coverage cut-off for distance estimates
  type: string?
  inputBinding:
    prefix: --cover
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_k
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_km_er
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- ParseAligns
