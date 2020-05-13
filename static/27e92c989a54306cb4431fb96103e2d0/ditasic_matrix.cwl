class: CommandLineTool
id: ditasic_matrix.py.cwl
inputs:
- id: start_prob
  doc: Mismatch probability at the first base.
  type: string
  inputBinding:
    prefix: --startprob
- id: avg_prob
  doc: Average per base mismatch probability.
  type: string
  inputBinding:
    prefix: --avgprob
- id: end_prob
  doc: Mismatch probability at the last base.
  type: string
  inputBinding:
    prefix: --endprob
- id: prob_file
  doc: File with mismatch (start, avg, end) probabilities for each reference.
  type: string
  inputBinding:
    prefix: --prob-file
- id: length
  doc: Length of reads used in similarity matrix creation (Required).
  type: long
  inputBinding:
    prefix: --length
- id: n
  doc: 'Number of reads sampled from each reference. [default: 250000]'
  type: string
  inputBinding:
    prefix: -n
- id: index
  doc: Path to existing kallisto index for all files (has to be constructed in same
    order as the paths in FILES).
  type: string
  inputBinding:
    prefix: --index
- id: temp
  doc: 'Directory to store temporary simulated datasets and TSV files. [default: ./temp]'
  type: string
  inputBinding:
    prefix: --temp
- id: skip
  doc: 'Skip read simulation (assume existing reads in temp) [default: False].'
  type: boolean
  inputBinding:
    prefix: --skip
- id: output
  doc: 'Output similarity matrix file. [default: similarity_matrix.npy]'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ditasic_matrix.py
