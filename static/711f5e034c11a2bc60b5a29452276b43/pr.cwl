class: CommandLineTool
id: pr.cwl
inputs:
- id: in_columns
  doc: "output COLUMN columns and print columns down,\nunless -a is used. Balance\
    \ number of lines in the\ncolumns on each page"
  type: long
  inputBinding:
    prefix: --columns
- id: in_across
  doc: "print columns across rather than down, used together\nwith -COLUMN"
  type: boolean
  inputBinding:
    prefix: --across
- id: in_show_control_chars
  doc: use hat notation (^G) and octal backslash notation
  type: boolean
  inputBinding:
    prefix: --show-control-chars
- id: in_double_space
  doc: double space the output
  type: boolean
  inputBinding:
    prefix: --double-space
- id: in_date_format
  doc: use FORMAT for the header date
  type: string
  inputBinding:
    prefix: --date-format
- id: in_expand_input_tabs
  doc: "[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]]\nexpand input CHARs (TABs) to tab\
    \ WIDTH (8)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_form_feed
  doc: "use form feeds instead of newlines to separate pages\n(by a 3-line page header\
    \ with -F or a 5-line header\nand trailer without -F)"
  type: boolean
  inputBinding:
    prefix: --form-feed
- id: in_header
  doc: "use a centered HEADER instead of filename in page header,\n-h \"\" prints\
    \ a blank line, don't use -h\"\""
  type: File
  inputBinding:
    prefix: --header
- id: in_replace_spaces_tab
  doc: "[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]]\nreplace spaces with CHARs (TABs)\
    \ to tab WIDTH (8)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_join_lines
  doc: "merge full lines, turns off -W line truncation, no column\nalignment, --sep-string[=STRING]\
    \ sets separators"
  type: boolean
  inputBinding:
    prefix: --join-lines
- id: in_length
  doc: "set the page length to PAGE_LENGTH (66) lines\n(default number of lines of\
    \ text 56, and with -F 63).\nimplies -t if PAGE_LENGTH <= 10"
  type: long
  inputBinding:
    prefix: --length
- id: in_merge
  doc: "print all files in parallel, one in each column,\ntruncate lines, but join\
    \ lines of full length with -J"
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_number_lines_use
  doc: "[SEP[DIGITS]], --number-lines[=SEP[DIGITS]]\nnumber lines, use DIGITS (5)\
    \ digits, then SEP (TAB),\ndefault counting starts with 1st line of input file"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_first_line_number
  doc: "start counting with NUMBER at 1st line of first\npage printed (see +FIRST_PAGE)"
  type: long
  inputBinding:
    prefix: --first-line-number
- id: in_indent
  doc: "offset each line with MARGIN (zero) spaces, do not\naffect -w or -W, MARGIN\
    \ will be added to PAGE_WIDTH"
  type: string
  inputBinding:
    prefix: --indent
- id: in_no_file_warnings
  doc: omit warning when a file cannot be opened
  type: boolean
  inputBinding:
    prefix: --no-file-warnings
- id: in_separate_columns_single
  doc: "[CHAR], --separator[=CHAR]\nseparate columns by a single character, default\
    \ for CHAR\nis the <TAB> character without -w and 'no char' with -w.\n-s[CHAR]\
    \ turns off line truncation of all 3 column\noptions (-COLUMN|-a -COLUMN|-m) except\
    \ -w is set"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_separate_columns_spaceotherwise
  doc: "[STRING], --sep-string[=STRING]\nseparate columns by STRING,\nwithout -S:\
    \ Default separator <TAB> with -J and <space>\notherwise (same as -S\" \"), no\
    \ effect on column options"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_omit_header
  doc: "omit page headers and trailers;\nimplied if PAGE_LENGTH <= 10"
  type: boolean
  inputBinding:
    prefix: --omit-header
- id: in_omit_pagination
  doc: "omit page headers and trailers, eliminate any pagination\nby form feeds set\
    \ in input files"
  type: boolean
  inputBinding:
    prefix: --omit-pagination
- id: in_show_non_printing
  doc: use octal backslash notation
  type: boolean
  inputBinding:
    prefix: --show-nonprinting
- id: in_width
  doc: "set page width to PAGE_WIDTH (72) characters for\nmultiple text-column output\
    \ only, -s[char] turns off (72)"
  type: long
  inputBinding:
    prefix: --width
- id: in_page_width
  doc: "set page width to PAGE_WIDTH (72) characters always,\ntruncate lines, except\
    \ -J option is set, no interference\nwith -S or -s"
  type: long
  inputBinding:
    prefix: --page-width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pr
