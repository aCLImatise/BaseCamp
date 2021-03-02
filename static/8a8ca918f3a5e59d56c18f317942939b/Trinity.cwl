class: CommandLineTool
id: Trinity.cwl
inputs:
- id: in_ignore_leading_blanks
  doc: Ignore leading blanks
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_check_input_sorted
  doc: Check whether input is sorted
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_dictionary_order_blank
  doc: Dictionary order (blank or alphanumeric only)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_ignore_case
  doc: Ignore case
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_general_numerical_sort
  doc: General numerical sort
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_ignore_unprintable_characters
  doc: Ignore unprintable characters
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sort_key
  doc: Sort key
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_sort_month
  doc: Sort month
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_sort_numbers
  doc: Sort numbers
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_to_file
  doc: Output to file
  type: File?
  inputBinding:
    prefix: -o
- id: in_key_separator
  doc: Key separator
  type: string?
  inputBinding:
    prefix: -t
- id: in_reverse_sort_order
  doc: Reverse sort order
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_stable_sort_ties
  doc: Stable (don't sort ties alphabetically)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_suppress_duplicate_lines
  doc: Suppress duplicate lines
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_lines_terminated_newline
  doc: Lines are terminated by NUL, not newline
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_mst
  doc: Ignored for GNU compatibility
  type: boolean?
  inputBinding:
    prefix: -mST
- id: in_nrugmcszbdfimstokt
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nrugMcszbdfimSTokt
- id: in_trinity_v_two_dot_nine_dot_one
  doc: '#'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_to_file
  doc: Output to file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_to_file)
hints: []
cwlVersion: v1.1
baseCommand:
- Trinity
