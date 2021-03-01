class: CommandLineTool
id: kmer_cov.cwl
inputs:
- id: in_output_regions_features
  doc: Output regions as Features
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_min_length_report
  doc: Min Length to report as a feature
  type: long?
  inputBinding:
    prefix: -L
- id: in_allow_codes_treated
  doc: Allow Ambiguity Codes (treated as A's)
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_output_uniquerepeatunsure_fasta
  doc: Output unique/repeat/unsure fasta sequences
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_repeats_covered_kmers
  doc: Repeats are > <x>% covered by kmers
  type: string?
  inputBinding:
    prefix: -r
- id: in_uniques_covered_kmers
  doc: Uniques are <= <x>% covered by kmers
  type: string?
  inputBinding:
    prefix: -u
- id: in_km_er_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kmer-cov
