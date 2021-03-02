class: CommandLineTool
id: chimerascan_exclude_transcriptome_events.cwl
inputs:
- id: in_h
  doc: Add 'filename:' prefix
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_n
  doc: Add 'line_no:' prefix
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_show_names_match
  doc: Show only names of files that match
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_show_names_do
  doc: Show only names of files that don't match
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_show_only_count
  doc: Show only count of matching lines
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_show_only_part
  doc: Show only the matching part of line
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_quiet_return_pattern
  doc: Quiet. Return 0 if PATTERN is found, 1 otherwise
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_select_nonmatching_lines
  doc: Select non-matching lines
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_suppress_open_read
  doc: Suppress open and read errors
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_recurse
  doc: Recurse
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_ignore_case
  doc: Ignore case
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_match_whole_words
  doc: Match whole words only
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_match_whole_lines
  doc: Match whole lines only
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_pattern_literal_regexp
  doc: PATTERN is a literal (not regexp)
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_pattern_extended_regexp
  doc: PATTERN is an extended regexp
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_match_n_times
  doc: Match up to N times per file
  type: File?
  inputBinding:
    prefix: -m
- id: in_print_n_lines_trailing
  doc: Print N lines of trailing context
  type: string?
  inputBinding:
    prefix: -A
- id: in_print_n_lines_leading
  doc: Print N lines of leading context
  type: string?
  inputBinding:
    prefix: -B
- id: in_same_as
  doc: Same as '-A N -B N'
  type: string?
  inputBinding:
    prefix: -C
- id: in_pattern_to_match
  doc: Pattern to match
  type: string?
  inputBinding:
    prefix: -e
- id: in_read_pattern_file
  doc: Read pattern from file
  type: File?
  inputBinding:
    prefix: -f
- id: in_hhnlloqvsriwfe
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -HhnlLoqvsriwFE
- id: in_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chimerascan-exclude-transcriptome-events
