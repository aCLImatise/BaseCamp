class: CommandLineTool
id: pslFilter.cwl
inputs:
- id: in_dir
  doc: Input files are directories rather than single files
  type: boolean
  inputBinding:
    prefix: -dir
- id: in_reward
  doc: (default 1) Bonus to score for match
  type: long
  inputBinding:
    prefix: -reward
- id: in_cost
  doc: (default 1) Penalty to score for mismatch
  type: long
  inputBinding:
    prefix: -cost
- id: in_gap_open_cost
  doc: (default 4) Penalty for gap opening
  type: long
  inputBinding:
    prefix: -gapOpenCost
- id: in_gap_size_log_mod
  doc: (default 1.00) Penalty for gap sizes
  type: double
  inputBinding:
    prefix: -gapSizeLogMod
- id: in_min_score
  doc: (default 15) Minimum score to pass filter
  type: long
  inputBinding:
    prefix: -minScore
- id: in_min_match
  doc: (default 30) Min match (including repeats to pass)
  type: long
  inputBinding:
    prefix: -minMatch
- id: in_min_unique_match
  doc: (default 20) Min non-repeats to pass)
  type: boolean
  inputBinding:
    prefix: -minUniqueMatch
- id: in_max_bad_ppt
  doc: (default 700) Maximum divergence in parts per thousand
  type: boolean
  inputBinding:
    prefix: -maxBadPpt
- id: in_min_ali
  doc: (default 600) Minimum ratio query in alignment in ppt
  type: boolean
  inputBinding:
    prefix: -minAli
- id: in_no_head
  doc: Don't output psl header
  type: boolean
  inputBinding:
    prefix: -noHead
- id: in_minal_it
  doc: (default 0) Like minAli for target
  type: boolean
  inputBinding:
    prefix: -minAliT
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pslFilter
