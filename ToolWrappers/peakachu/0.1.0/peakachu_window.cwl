class: CommandLineTool
id: peakachu_window.cwl
inputs:
- id: in_pairwise_replicates
  doc: '[FEATURES [FEATURES ...]]'
  type: string[]
  inputBinding:
    prefix: --pairwise_replicates
- id: in_window_size
  doc: "[SIZE_FACTORS [SIZE_FACTORS ...]], --size_factors [SIZE_FACTORS [SIZE_FACTORS\
    \ ...]]\nNormalization factors for libraries in input order\n(first experiment\
    \ then control libraries)"
  type: long?
  inputBinding:
    prefix: --window_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- peakachu
- window
