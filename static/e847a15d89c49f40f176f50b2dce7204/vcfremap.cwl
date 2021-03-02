class: CommandLineTool
id: vcfremap.cwl
inputs:
- id: in_ref_window_size
  doc: align using this many bases flanking each side of the reference allele
  type: long?
  inputBinding:
    prefix: --ref-window-size
- id: in_alt_window_size
  doc: align using this many flanking bases from the reference around each alternate
    allele
  type: long?
  inputBinding:
    prefix: --alt-window-size
- id: in_reference
  doc: FASTA reference file, required with -i and -u
  type: File?
  inputBinding:
    prefix: --reference
- id: in_match_score
  doc: match score for SW algorithm
  type: string?
  inputBinding:
    prefix: --match-score
- id: in_mismatch_score
  doc: mismatch score for SW algorithm
  type: string?
  inputBinding:
    prefix: --mismatch-score
- id: in_gap_open_penalty
  doc: gap open penalty for SW algorithm
  type: string?
  inputBinding:
    prefix: --gap-open-penalty
- id: in_gap_extend_penalty
  doc: gap extension penalty for SW algorithm
  type: string?
  inputBinding:
    prefix: --gap-extend-penalty
- id: in_entropy_gap_open
  doc: use entropy scaling for the gap open penalty
  type: boolean?
  inputBinding:
    prefix: --entropy-gap-open
- id: in_repeat_gap_extend
  doc: penalize non-repeat-unit gaps in repeat sequence
  type: string?
  inputBinding:
    prefix: --repeat-gap-extend
- id: in_adjust_vcf
  doc: supply a new cigar as TAG in the output VCF
  type: string?
  inputBinding:
    prefix: --adjust-vcf
- id: in_vcf_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfremap
