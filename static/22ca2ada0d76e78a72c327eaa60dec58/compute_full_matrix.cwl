class: CommandLineTool
id: compute_full_matrix.py.cwl
inputs:
- id: aligner_m_score_threshold
  doc: cutoff used at alignment, for coloring realigned values in blue
  type: string
  inputBinding:
    prefix: --aligner_mscore_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_full_matrix.py
