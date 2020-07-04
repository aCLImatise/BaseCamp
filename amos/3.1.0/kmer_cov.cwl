class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kmer_cov.cwl
inputs:
- id: output_regions_features
  doc: Output regions as Features
  type: boolean
  inputBinding:
    prefix: -F
- id: min_length_report
  doc: Min Length to report as a feature
  type: string
  inputBinding:
    prefix: -L
- id: allow_codes_treated
  doc: Allow Ambiguity Codes (treated as A's)
  type: boolean
  inputBinding:
    prefix: -A
- id: output_uniquerepeatunsure_fasta
  doc: Output unique/repeat/unsure fasta sequences
  type: boolean
  inputBinding:
    prefix: -f
- id: repeats_x_covered
  doc: Repeats are > <x>% covered by kmers
  type: string
  inputBinding:
    prefix: -r
- id: uniques_x_covered
  doc: Uniques are <= <x>% covered by kmers
  type: string
  inputBinding:
    prefix: -u
- id: km_er_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-cov
