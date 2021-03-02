class: CommandLineTool
id: diff.cwl
inputs:
- id: in_normal
  doc: output a normal diff (the default)
  type: boolean?
  inputBinding:
    prefix: --normal
- id: in_brief
  doc: report only when files differ
  type: boolean?
  inputBinding:
    prefix: --brief
- id: in_report_identical_files
  doc: report when two files are the same
  type: boolean?
  inputBinding:
    prefix: --report-identical-files
- id: in_context
  doc: '[=NUM]   output NUM (default 3) lines of copied context'
  type: long?
  inputBinding:
    prefix: --context
- id: in_unified
  doc: '[=NUM]   output NUM (default 3) lines of unified context'
  type: long?
  inputBinding:
    prefix: --unified
- id: in_ed
  doc: output an ed script
  type: boolean?
  inputBinding:
    prefix: --ed
- id: in_rcs
  doc: output an RCS format diff
  type: boolean?
  inputBinding:
    prefix: --rcs
- id: in_side_by_side
  doc: output in two columns
  type: boolean?
  inputBinding:
    prefix: --side-by-side
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
- id: in_show_c_function
  doc: show which C function each change is in
  type: boolean?
  inputBinding:
    prefix: --show-c-function
- id: in_show_function_line
  doc: show the most recent line matching RE
  type: string?
  inputBinding:
    prefix: --show-function-line
- id: in_label
  doc: "use LABEL instead of file name and timestamp\n(can be repeated)"
  type: File?
  inputBinding:
    prefix: --label
- id: in_expand_tabs
  doc: expand tabs to spaces in output
  type: boolean?
  inputBinding:
    prefix: --expand-tabs
- id: in_initial_tab
  doc: make tabs line up by prepending a tab
  type: boolean?
  inputBinding:
    prefix: --initial-tab
- id: in_tab_size
  doc: tab stops every NUM (default 8) print columns
  type: long?
  inputBinding:
    prefix: --tabsize
- id: in_suppress_blank_empty
  doc: suppress space or tab before empty output lines
  type: boolean?
  inputBinding:
    prefix: --suppress-blank-empty
- id: in_paginate
  doc: pass output through 'pr' to paginate it
  type: boolean?
  inputBinding:
    prefix: --paginate
- id: in_recursive
  doc: recursively compare any subdirectories found
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_no_dereference
  doc: don't follow symbolic links
  type: boolean?
  inputBinding:
    prefix: --no-dereference
- id: in_new_file
  doc: treat absent files as empty
  type: boolean?
  inputBinding:
    prefix: --new-file
- id: in_unidirectional_new_file
  doc: treat absent first files as empty
  type: boolean?
  inputBinding:
    prefix: --unidirectional-new-file
- id: in_ignore_file_name_case
  doc: ignore case when comparing file names
  type: boolean?
  inputBinding:
    prefix: --ignore-file-name-case
- id: in_no_ignore_file_name_case
  doc: consider case when comparing file names
  type: boolean?
  inputBinding:
    prefix: --no-ignore-file-name-case
- id: in_exclude
  doc: exclude files that match PAT
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_exclude_from
  doc: exclude files that match any pattern in FILE
  type: File?
  inputBinding:
    prefix: --exclude-from
- id: in_starting_file
  doc: start with FILE when comparing directories
  type: File?
  inputBinding:
    prefix: --starting-file
- id: in_from_file
  doc: "compare FILE1 to all operands;\nFILE1 can be a directory"
  type: File?
  inputBinding:
    prefix: --from-file
- id: in_to_file
  doc: "compare all operands to FILE2;\nFILE2 can be a directory"
  type: File?
  inputBinding:
    prefix: --to-file
- id: in_ignore_case
  doc: ignore case differences in file contents
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
  doc: ignore changes where lines are all blank
  type: boolean?
  inputBinding:
    prefix: --ignore-blank-lines
- id: in_ignore_matching_lines
  doc: ignore changes where all lines match RE
  type: string?
  inputBinding:
    prefix: --ignore-matching-lines
- id: in_text
  doc: treat all files as text
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_strip_trailing_cr
  doc: strip trailing carriage return on input
  type: boolean?
  inputBinding:
    prefix: --strip-trailing-cr
- id: in_ifdef
  doc: output merged file with '#ifdef NAME' diffs
  type: File?
  inputBinding:
    prefix: --ifdef
- id: in_g_type_group_format
  doc: format GTYPE input groups with GFMT
  type: string?
  inputBinding:
    prefix: --GTYPE-group-format
- id: in_line_format
  doc: format all input lines with LFMT
  type: string?
  inputBinding:
    prefix: --line-format
- id: in_ltype_line_format
  doc: format LTYPE input lines with LFMT
  type: string?
  inputBinding:
    prefix: --LTYPE-line-format
- id: in_minimal
  doc: try hard to find a smaller set of changes
  type: boolean?
  inputBinding:
    prefix: --minimal
- id: in_horizon_lines
  doc: keep NUM lines of the common prefix and suffix
  type: long?
  inputBinding:
    prefix: --horizon-lines
- id: in_speed_large_files
  doc: assume large files and many scattered small changes
  type: boolean?
  inputBinding:
    prefix: --speed-large-files
- id: in_color
  doc: "[=WHEN]       colorize the output; WHEN can be 'never', 'always',\nor 'auto'\
    \ (the default)"
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_palette
  doc: "the colors to use when --color is active; PALETTE is\na colon-separated list\
    \ of terminfo capabilities"
  type: string?
  inputBinding:
    prefix: --palette
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ifdef
  doc: output merged file with '#ifdef NAME' diffs
  type: File?
  outputBinding:
    glob: $(inputs.in_ifdef)
hints: []
cwlVersion: v1.1
baseCommand:
- diff
