class: CommandLineTool
id: antarna.py_DP.cwl
inputs:
- id: diff_accessibility
  doc: Define an differential accessibility evaluation block.
  type: string
  inputBinding:
    prefix: --diff-accessibility
- id: fuzzy_constraint
  doc: Define fuzzy structure constraint wihtin DP mode
  type: string
  inputBinding:
    prefix: --fuzzyConstraint
- id: diff_fuzzy_constraint
  doc: Define a differential fuzzy structure constraint wihtin DP mode
  type: string
  inputBinding:
    prefix: --diff-fuzzyConstraint
- id: trail_blaze_threshold
  doc: Define the threshold whic need to be passed in order to bonify certain elements
    in the terrain graph.
  type: string
  inputBinding:
    prefix: --trailblaze_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- antarna.py
- DP
