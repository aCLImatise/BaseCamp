class: CommandLineTool
id: annotateBed.cwl
inputs:
- id: in_names
  doc: "A list of names (one / file) to describe each file in -i.\nThese names will\
    \ be printed as a header line."
  type: boolean?
  inputBinding:
    prefix: -names
- id: in_counts
  doc: "the count of features in each file that overlap -i.\n- Default is to report\
    \ the fraction of -i covered by each file."
  type: File?
  inputBinding:
    prefix: -counts
- id: in_both
  doc: "Report the counts followed by the % coverage.\n- Default is to report the\
    \ fraction of -i covered by each file."
  type: boolean?
  inputBinding:
    prefix: -both
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only counts overlaps\non the _same_ strand.\n\
    - By default, overlaps are counted without respect to strand."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness.  That is, only count overlaps\non the _opposite_\
    \ strand.\n- By default, overlaps are counted without respect to strand.\n"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_files
  doc: ''
  type: File?
  inputBinding:
    prefix: -files
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_two_dot_dotfile_n
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- annotateBed
