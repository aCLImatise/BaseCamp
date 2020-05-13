class: CommandLineTool
id: vcfremap.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_window_size
  doc: align using this many bases flanking each side of the reference allele
  type: string
  inputBinding:
    prefix: --ref-window-size
- id: alt_window_size
  doc: align using this many flanking bases from the reference around each alternate
    allele
  type: string
  inputBinding:
    prefix: --alt-window-size
- id: reference
  doc: FASTA reference file, required with -i and -u
  type: File
  inputBinding:
    prefix: --reference
- id: match_score
  doc: match score for SW algorithm
  type: string
  inputBinding:
    prefix: --match-score
- id: mismatch_score
  doc: mismatch score for SW algorithm
  type: string
  inputBinding:
    prefix: --mismatch-score
- id: gap_open_penalty
  doc: gap open penalty for SW algorithm
  type: string
  inputBinding:
    prefix: --gap-open-penalty
- id: gap_extend_penalty
  doc: gap extension penalty for SW algorithm
  type: string
  inputBinding:
    prefix: --gap-extend-penalty
- id: entropy_gap_open
  doc: use entropy scaling for the gap open penalty
  type: boolean
  inputBinding:
    prefix: --entropy-gap-open
- id: repeat_gap_extend
  doc: penalize non-repeat-unit gaps in repeat sequence
  type: string
  inputBinding:
    prefix: --repeat-gap-extend
- id: adjust_vcf
  doc: supply a new cigar as TAG in the output VCF
  type: string
  inputBinding:
    prefix: --adjust-vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfremap
