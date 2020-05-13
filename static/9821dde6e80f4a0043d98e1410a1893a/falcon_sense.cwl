class: CommandLineTool
id: falcon_sense.cwl
inputs:
- id: n_core
  doc: number of processes used for generating consensus
  type: string
  inputBinding:
    prefix: --n_core
- id: local_match_count_window
  doc: local match window size
  type: string
  inputBinding:
    prefix: --local_match_count_window
- id: local_match_count_threshold
  doc: local match count threshold
  type: string
  inputBinding:
    prefix: --local_match_count_threshold
- id: min_cov
  doc: minimum coverage to break the consensus
  type: long
  inputBinding:
    prefix: --min_cov
- id: max_n_read
  doc: minimum number of reads used in generating the consensus
  type: long
  inputBinding:
    prefix: --max_n_read
- id: trim
  doc: trim the input sequence with k-mer spare dynamic programming to find the mapped
    range
  type: boolean
  inputBinding:
    prefix: --trim
- id: output_full
  doc: output uncorrected regions too
  type: boolean
  inputBinding:
    prefix: --output_full
- id: output_multi
  doc: output multi correct regions
  type: boolean
  inputBinding:
    prefix: --output_multi
- id: min_idt
  doc: minimum identity of the alignments used for correction
  type: long
  inputBinding:
    prefix: --min_idt
- id: edge_tolerance
  doc: for trimming, the there is unaligned edge leng > edge_tolerance, ignore the
    read
  type: string
  inputBinding:
    prefix: --edge_tolerance
- id: trim_size
  doc: the size for triming both ends from initial sparse aligned region
  type: string
  inputBinding:
    prefix: --trim_size
outputs: []
cwlVersion: v1.1
baseCommand:
- falcon_sense
