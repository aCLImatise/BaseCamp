class: CommandLineTool
id: filter_away_subset.py.cwl
inputs:
- id: in_fuzzy_junction
  doc: "Fuzzy junction max dist (default: 5bp)\n"
  type: long
  inputBinding:
    prefix: --fuzzy_junction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_away_subset.py
