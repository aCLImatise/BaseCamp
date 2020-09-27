class: CommandLineTool
id: map_kmers.sh.cwl
inputs:
- id: in_h
  doc: Add 'filename:' prefix
  type: boolean
  inputBinding:
    prefix: -H
- id: in_n
  doc: Add 'line_no:' prefix
  type: boolean
  inputBinding:
    prefix: -n
- id: in_show_names_match
  doc: Show only names of files that match
  type: boolean
  inputBinding:
    prefix: -l
- id: in_show_names_do
  doc: Show only names of files that don't match
  type: boolean
  inputBinding:
    prefix: -L
- id: in_show_only_count
  doc: Show only count of matching lines
  type: boolean
  inputBinding:
    prefix: -c
- id: in_show_only_part
  doc: Show only the matching part of line
  type: boolean
  inputBinding:
    prefix: -o
- id: in_quiet_return_found
  doc: Quiet. Return 0 if PATTERN is found, 1 otherwise
  type: boolean
  inputBinding:
    prefix: -q
- id: in_select_nonmatching_lines
  doc: Select non-matching lines
  type: boolean
  inputBinding:
    prefix: -v
- id: in_suppress_open_read
  doc: Suppress open and read errors
  type: boolean
  inputBinding:
    prefix: -s
- id: in_recurse
  doc: Recurse
  type: boolean
  inputBinding:
    prefix: -r
- id: in_ignore_case
  doc: Ignore case
  type: boolean
  inputBinding:
    prefix: -i
- id: in_match_whole_words
  doc: Match whole words only
  type: boolean
  inputBinding:
    prefix: -w
- id: in_match_whole_lines
  doc: Match whole lines only
  type: boolean
  inputBinding:
    prefix: -x
- id: in_pattern_literal_regexp
  doc: PATTERN is a literal (not regexp)
  type: boolean
  inputBinding:
    prefix: -F
- id: in_pattern_extended_regexp
  doc: PATTERN is an extended regexp
  type: boolean
  inputBinding:
    prefix: -E
- id: in_match_n_times
  doc: Match up to N times per file
  type: File
  inputBinding:
    prefix: -m
- id: in_print_n_lines_trailing
  doc: Print N lines of trailing context
  type: string
  inputBinding:
    prefix: -A
- id: in_print_n_lines_leading
  doc: Print N lines of leading context
  type: string
  inputBinding:
    prefix: -B
- id: in_same_as
  doc: Same as '-A N -B N'
  type: string
  inputBinding:
    prefix: -C
- id: in_pattern_to_match
  doc: Pattern to match
  type: string
  inputBinding:
    prefix: -e
- id: in_read_pattern_file
  doc: Read pattern from file
  type: File
  inputBinding:
    prefix: -f
- id: in_fi
  doc: Input FASTA file
  type: boolean
  inputBinding:
    prefix: -fi
- id: in_fo
  doc: Output file (opt., default is STDOUT
  type: File
  inputBinding:
    prefix: -fo
- id: in_bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_name_only
  doc: Use the name field for the FASTA header
  type: boolean
  inputBinding:
    prefix: -nameOnly
- id: in_split
  doc: "Given BED12 fmt., extract and concatenate the sequences\nfrom the BED \"blocks\"\
    \ (e.g., exons)"
  type: boolean
  inputBinding:
    prefix: -split
- id: in_tab
  doc: "Write output in TAB delimited format.\n- Default is FASTA format."
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_full_header
  doc: "Use full fasta header.\n- By default, only the word before the first space\
    \ or tab\nis used."
  type: boolean
  inputBinding:
    prefix: -fullHeader
- id: in_ignore_leading_blanks
  doc: Ignore leading blanks
  type: boolean
  inputBinding:
    prefix: -b
- id: in_dictionary_order_blank
  doc: Dictionary order (blank or alphanumeric only)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_general_numerical_sort
  doc: General numerical sort
  type: boolean
  inputBinding:
    prefix: -g
- id: in_sort_key
  doc: Sort key
  type: boolean
  inputBinding:
    prefix: -k
- id: in_sort_month
  doc: Sort month
  type: boolean
  inputBinding:
    prefix: -M
- id: in_key_separator
  doc: Key separator
  type: string
  inputBinding:
    prefix: -t
- id: in_suppress_duplicate_lines
  doc: Suppress duplicate lines
  type: boolean
  inputBinding:
    prefix: -u
- id: in_lines_terminated_newline
  doc: Lines are terminated by NUL, not newline
  type: boolean
  inputBinding:
    prefix: -z
- id: in_mst
  doc: Ignored for GNU compatibility
  type: boolean
  inputBinding:
    prefix: -mST
- id: in_nrugmcszbdfimstokt
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nrugMcszbdfimSTokt
- id: in_a_slash_b_slash_c
  doc: ''
  type: string
  inputBinding:
    prefix: -A/B/C
- id: in_hhnlloqvsriwfe
  doc: ''
  type: boolean
  inputBinding:
    prefix: -HhnlLoqvsriwFE
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pattern_slash_e
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_get_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pattern_dot_dot_dot_slash_f
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fo
  doc: Output file (opt., default is STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_fo)
cwlVersion: v1.1
baseCommand:
- map_kmers.sh
