class: CommandLineTool
id: smof_stat.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: delimiter
  doc: output delimiter
  type: string
  inputBinding:
    prefix: --delimiter
- id: by_seq
  doc: write a line for each sequence
  type: boolean
  inputBinding:
    prefix: --byseq
- id: case_sensitive
  doc: match case
  type: boolean
  inputBinding:
    prefix: --case-sensitive
- id: count_lower
  doc: count the number of lowercase characters
  type: boolean
  inputBinding:
    prefix: --count-lower
- id: counts
  doc: write counts of all characters
  type: boolean
  inputBinding:
    prefix: --counts
- id: type
  doc: guess sequence type
  type: boolean
  inputBinding:
    prefix: --type
- id: length
  doc: write sequence length
  type: boolean
  inputBinding:
    prefix: --length
- id: proportion
  doc: write proportion of each character
  type: boolean
  inputBinding:
    prefix: --proportion
- id: aa_profile
  doc: display protein profile
  type: boolean
  inputBinding:
    prefix: --aa-profile
- id: hist
  doc: write ascii histogram of sequence lengths
  type: boolean
  inputBinding:
    prefix: --hist
- id: log_hist
  doc: write ascii histogram of sequence log2 lengths
  type: boolean
  inputBinding:
    prefix: --log-hist
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- stat
