class: CommandLineTool
id: filter_basil.py.cwl
inputs:
- id: i
  doc: Input file name.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output file name.
  type: string
  inputBinding:
    prefix: -o
- id: min_oea_each_side
  doc: Minimal OEA coverage on each side.
  type: long
  inputBinding:
    prefix: --min-oea-each-side
- id: min_oea_one_side
  doc: Minimal OEA coverage on one side.
  type: long
  inputBinding:
    prefix: --min-oea-one-side
- id: min_oea_sum
  doc: Minimal total OEA coverage.
  type: long
  inputBinding:
    prefix: --min-oea-sum
- id: min_clipping_each_side
  doc: Minimal OEA coverage on each side.
  type: long
  inputBinding:
    prefix: --min-clipping-each-side
- id: min_clipping_sum
  doc: Minimal total OEA coverage.
  type: long
  inputBinding:
    prefix: --min-clipping-sum
- id: min_g_score
  doc: Smallest geometric mean score
  type: long
  inputBinding:
    prefix: --min-gscore
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_basil.py
