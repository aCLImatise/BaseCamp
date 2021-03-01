class: CommandLineTool
id: sdiff.cwl
inputs:
- id: in_output
  doc: operate interactively, sending output to FILE
  type: File?
  inputBinding:
    prefix: --output
- id: in_ignore_case
  doc: consider upper- and lower-case to be the same
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_ignore_tab_expansion
  doc: ignore changes due to tab expansion
  type: boolean?
  inputBinding:
    prefix: --ignore-tab-expansion
- id: in_ignore_trailing_space
  doc: ignore white space at line end
  type: boolean?
  inputBinding:
    prefix: --ignore-trailing-space
- id: in_ignore_space_change
  doc: ignore changes in the amount of white space
  type: boolean?
  inputBinding:
    prefix: --ignore-space-change
- id: in_ignore_all_space
  doc: ignore all white space
  type: boolean?
  inputBinding:
    prefix: --ignore-all-space
- id: in_ignore_blank_lines
  doc: ignore changes whose lines are all blank
  type: boolean?
  inputBinding:
    prefix: --ignore-blank-lines
- id: in_ignore_matching_lines
  doc: ignore changes all whose lines match RE
  type: string?
  inputBinding:
    prefix: --ignore-matching-lines
- id: in_strip_trailing_cr
  doc: strip trailing carriage return on input
  type: boolean?
  inputBinding:
    prefix: --strip-trailing-cr
- id: in_text
  doc: treat all files as text
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_width
  doc: output at most NUM (default 130) print columns
  type: long?
  inputBinding:
    prefix: --width
- id: in_left_column
  doc: output only the left column of common lines
  type: boolean?
  inputBinding:
    prefix: --left-column
- id: in_suppress_common_lines
  doc: do not output common lines
  type: boolean?
  inputBinding:
    prefix: --suppress-common-lines
- id: in_expand_tabs
  doc: expand tabs to spaces in output
  type: boolean?
  inputBinding:
    prefix: --expand-tabs
- id: in_tab_size
  doc: tab stops at every NUM (default 8) print columns
  type: long?
  inputBinding:
    prefix: --tabsize
- id: in_minimal
  doc: try hard to find a smaller set of changes
  type: boolean?
  inputBinding:
    prefix: --minimal
- id: in_speed_large_files
  doc: assume large files, many scattered small changes
  type: boolean?
  inputBinding:
    prefix: --speed-large-files
- id: in_diff_program
  doc: use PROGRAM to compare files
  type: string?
  inputBinding:
    prefix: --diff-program
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: operate interactively, sending output to FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sdiff
