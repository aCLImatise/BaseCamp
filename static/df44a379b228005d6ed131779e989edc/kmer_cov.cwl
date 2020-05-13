class: CommandLineTool
id: kmer_cov.cwl
inputs:
- id: km_er_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: Output regions as Features
  type: boolean
  inputBinding:
    prefix: -F
- id: l
  doc: Min Length to report as a feature
  type: string
  inputBinding:
    prefix: -L
- id: a
  doc: Allow Ambiguity Codes (treated as A's)
  type: boolean
  inputBinding:
    prefix: -A
- id: f
  doc: Output unique/repeat/unsure fasta sequences
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: Repeats are > <x>% covered by kmers
  type: string
  inputBinding:
    prefix: -r
- id: u
  doc: Uniques are <= <x>% covered by kmers
  type: string
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-cov
