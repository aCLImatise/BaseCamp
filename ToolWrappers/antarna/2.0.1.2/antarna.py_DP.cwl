class: CommandLineTool
id: antarna.py_DP.cwl
inputs:
- id: in_cstr
  doc: "Structure constraint using RNA dotbracket notation. If\nspecified, this structure\
    \ will be used to constrain a\nfolding hypothesis to produce a ligand bound model\
    \ of\nthe dotplot. (TYPE: str)"
  type: string?
  inputBinding:
    prefix: --Cstr
- id: in_accuracy
  doc: Define an accuracy evaluation block.
  type: string?
  inputBinding:
    prefix: --accuracy
- id: in_accessibility
  doc: Define an accessibility evaluation block.
  type: string?
  inputBinding:
    prefix: --accessibility
- id: in_diff_accessibility
  doc: Define an differential accessibility evaluation block.
  type: string?
  inputBinding:
    prefix: --diff-accessibility
- id: in_fuzzy_constraint
  doc: Define fuzzy structure constraint wihtin DP mode
  type: string?
  inputBinding:
    prefix: --fuzzyConstraint
- id: in_diff_fuzzy_constraint
  doc: "Define a differential fuzzy structure constraint\nwihtin DP mode"
  type: string?
  inputBinding:
    prefix: --diff-fuzzyConstraint
- id: in_trail_blaze_threshold
  doc: "Define the threshold whic need to be passed in order\nto bonify certain elements\
    \ in the terrain graph.\n"
  type: string?
  inputBinding:
    prefix: --trailblaze_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- antarna.py
- DP
