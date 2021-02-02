class: CommandLineTool
id: merge_double_rgs.pl.cwl
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
- id: in_output_only_bytes
  doc: Output only bytes from LIST
  type: string
  inputBinding:
    prefix: -b
- id: in_output_only_characters
  doc: Output only characters from LIST
  type: string
  inputBinding:
    prefix: -c
- id: in_use_char_tab
  doc: Use CHAR instead of tab as the field delimiter
  type: string
  inputBinding:
    prefix: -d
- id: in_output_only_lines
  doc: Output only the lines containing delimiter
  type: boolean
  inputBinding:
    prefix: -s
- id: in_ignored
  doc: Ignored
  type: boolean
  inputBinding:
    prefix: -n
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cut
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_pair_to_pair
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_double_rgs.pl
