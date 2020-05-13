class: CommandLineTool
id: filter_away_subset.py.cwl
inputs:
- id: input_prefix
  doc: 'Input prefix (ex: test.collapsed.min_fl_2)'
  type: string
  inputBinding:
    position: 0
- id: fuzzy_junction
  doc: 'Fuzzy junction max dist (default: 5bp)'
  type: string
  inputBinding:
    prefix: --fuzzy_junction
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_away_subset.py
