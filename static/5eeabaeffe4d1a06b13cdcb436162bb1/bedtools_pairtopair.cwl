class: CommandLineTool
id: ../../../bedtools_pairtopair.cwl
inputs:
- id: in_minimum_overlap_required
  doc: "Minimum overlap required as fraction of A (e.g. 0.05).\nDefault is 1E-9 (effectively\
    \ 1bp)."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_type
  doc: "Approach to reporting overlaps between A and B.\nneither Report overlaps if\
    \ neither end of A overlaps B.\neither  Report overlaps if either ends of A overlap\
    \ B.\nboth    Report overlaps if both ends of A overlap B.\nnotboth Report overlaps\
    \ if one or neither of A's overlap B.\n- Default = both."
  type: boolean
  inputBinding:
    prefix: -type
- id: in_slop
  doc: "The amount of slop (in b.p.). to be added to each footprint of A.\n*Note*:\
    \ Slop is subtracted from start1 and start2\nand added to end1 and end2.\n- Default\
    \ = 0."
  type: boolean
  inputBinding:
    prefix: -slop
- id: in_ss
  doc: "Add slop based to each BEDPE footprint based on strand.\n- If strand is \"\
    +\", slop is only added to the end coordinates.\n- If strand is \"-\", slop is\
    \ only added to the start coordinates.\n- By default, slop is added in both directions."
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_is
  doc: "Ignore strands when searching for overlaps.\n- By default, strands are enforced."
  type: boolean
  inputBinding:
    prefix: -is
- id: in_rdn
  doc: "Require the hits to have different names (i.e. avoid self-hits).\n- By default,\
    \ same names are allowed."
  type: boolean
  inputBinding:
    prefix: -rdn
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- pairtopair
