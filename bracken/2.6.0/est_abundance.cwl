class: CommandLineTool
id: est_abundance.py.cwl
inputs:
- id: input
  doc: Input kraken report file.
  type: string
  inputBinding:
    prefix: --input
- id: km_er_distr
  doc: Kmer distribution file.
  type: string
  inputBinding:
    prefix: --kmer_distr
- id: output
  doc: Output modified kraken report file with abundance estimates
  type: string
  inputBinding:
    prefix: --output
- id: level
  doc: 'Level to push all reads to [default: S].'
  type: string
  inputBinding:
    prefix: --level
- id: out_report
  doc: 'Name of new kraken report [default: same as input report with _bracken added
    to filename]'
  type: string
  inputBinding:
    prefix: --out-report
- id: threshold
  doc: Threshold for the minimum number of reads kraken must assign to a classification
    for that classification to be considered in the final abundance estimation.
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- est_abundance.py
