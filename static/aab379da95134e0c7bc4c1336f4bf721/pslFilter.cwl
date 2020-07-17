class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslFilter.cwl
inputs:
- id: dir
  doc: Input files are directories rather than single files
  type: boolean
  inputBinding:
    prefix: -dir
- id: reward
  doc: (default 1) Bonus to score for match
  type: string
  inputBinding:
    prefix: -reward
- id: cost
  doc: (default 1) Penalty to score for mismatch
  type: string
  inputBinding:
    prefix: -cost
- id: gap_open_cost
  doc: (default 4) Penalty for gap opening
  type: string
  inputBinding:
    prefix: -gapOpenCost
- id: gap_size_log_mod
  doc: (default 1.00) Penalty for gap sizes
  type: string
  inputBinding:
    prefix: -gapSizeLogMod
- id: min_score
  doc: (default 15) Minimum score to pass filter
  type: string
  inputBinding:
    prefix: -minScore
- id: min_match
  doc: (default 30) Min match (including repeats to pass)
  type: string
  inputBinding:
    prefix: -minMatch
- id: min_unique_match
  doc: (default 20) Min non-repeats to pass)
  type: boolean
  inputBinding:
    prefix: -minUniqueMatch
- id: max_bad_ppt
  doc: (default 700) Maximum divergence in parts per thousand
  type: boolean
  inputBinding:
    prefix: -maxBadPpt
- id: min_ali
  doc: (default 600) Minimum ratio query in alignment in ppt
  type: boolean
  inputBinding:
    prefix: -minAli
- id: no_head
  doc: Don't output psl header
  type: boolean
  inputBinding:
    prefix: -noHead
- id: minal_it
  doc: (default 0) Like minAli for target
  type: boolean
  inputBinding:
    prefix: -minAliT
outputs: []
cwlVersion: v1.1
baseCommand:
- pslFilter
