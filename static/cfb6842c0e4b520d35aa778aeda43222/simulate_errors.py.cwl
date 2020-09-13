class: CommandLineTool
id: ../../../simulate_errors.py.cwl
inputs:
- id: in_total_rate_substitutions
  doc: "Total rate of substitutions insertions and deletions\n(0.1)."
  type: double
  inputBinding:
    prefix: -e
- id: in_relative_frequency_substitutionsinsertionsdeletions
  doc: "Relative frequency of substitutions,insertions,deletions\n(1,1,4)."
  type: long
  inputBinding:
    prefix: -w
- id: in_random_seed_none
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simulate_errors.py
