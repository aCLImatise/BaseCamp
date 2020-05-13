class: CommandLineTool
id: pr.cwl
inputs:
- id: show_control_chars
  doc: use hat notation (^G) and octal backslash notation
  type: boolean
  inputBinding:
    prefix: --show-control-chars
- id: double_space
  doc: double space the output
  type: boolean
  inputBinding:
    prefix: --double-space
- id: date_format
  doc: use FORMAT for the header date
  type: string
  inputBinding:
    prefix: --date-format
- id: e
  doc: '[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]] expand input CHARs (TABs) to tab
    WIDTH (8)'
  type: boolean
  inputBinding:
    prefix: -e
- id: form_feed
  doc: use form feeds instead of newlines to separate pages (by a 3-line page header
    with -F or a 5-line header and trailer without -F)
  type: boolean
  inputBinding:
    prefix: --form-feed
- id: header
  doc: use a centred HEADER instead of filename in page header, -h "" prints a blank
    line, don't use -h""
  type: string
  inputBinding:
    prefix: --header
- id: i
  doc: '[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]] replace spaces with CHARs (TABs)
    to tab WIDTH (8)'
  type: boolean
  inputBinding:
    prefix: -i
- id: join_lines
  doc: merge full lines, turns off -W line truncation, no column alignment, --sep-string[=STRING]
    sets separators
  type: boolean
  inputBinding:
    prefix: --join-lines
- id: length
  doc: set the page length to PAGE_LENGTH (66) lines (default number of lines of text
    56, and with -F 63). implies -t if PAGE_LENGTH <= 10
  type: string
  inputBinding:
    prefix: --length
- id: merge
  doc: print all files in parallel, one in each column, truncate lines, but join lines
    of full length with -J
  type: boolean
  inputBinding:
    prefix: --merge
- id: n
  doc: '[SEP[DIGITS]], --number-lines[=SEP[DIGITS]] number lines, use DIGITS (5) digits,
    then SEP (TAB), default counting starts with 1st line of input file'
  type: boolean
  inputBinding:
    prefix: -n
- id: first_line_number
  doc: start counting with NUMBER at 1st line of first page printed (see +FIRST_PAGE)
  type: string
  inputBinding:
    prefix: --first-line-number
- id: indent
  doc: offset each line with MARGIN (zero) spaces, do not affect -w or -W, MARGIN
    will be added to PAGE_WIDTH
  type: string
  inputBinding:
    prefix: --indent
- id: no_file_warnings
  doc: omit warning when a file cannot be opened
  type: boolean
  inputBinding:
    prefix: --no-file-warnings
- id: s
  doc: "[CHAR], --separator[=CHAR] separate columns by a single character, default\
    \ for CHAR is the <TAB> character without -w and 'no char' with -w. -s[CHAR] turns\
    \ off line truncation of all 3 column options (-COLUMN|-a -COLUMN|-m) except -w\
    \ is set"
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: '[STRING], --sep-string[=STRING] separate columns by STRING, without -S: Default
    separator <TAB> with -J and <space> otherwise (same as -S" "), no effect on column
    options'
  type: boolean
  inputBinding:
    prefix: -S
- id: omit_header
  doc: omit page headers and trailers; implied if PAGE_LENGTH <= 10
  type: boolean
  inputBinding:
    prefix: --omit-header
- id: omit_pagination
  doc: omit page headers and trailers, eliminate any pagination by form feeds set
    in input files
  type: boolean
  inputBinding:
    prefix: --omit-pagination
- id: show_non_printing
  doc: use octal backslash notation
  type: boolean
  inputBinding:
    prefix: --show-nonprinting
- id: width
  doc: set page width to PAGE_WIDTH (72) characters for multiple text-column output
    only, -s[char] turns off (72)
  type: string
  inputBinding:
    prefix: --width
- id: page_width
  doc: set page width to PAGE_WIDTH (72) characters always, truncate lines, except
    -J option is set, no interference with -S or -s
  type: string
  inputBinding:
    prefix: --page-width
outputs: []
cwlVersion: v1.1
baseCommand:
- pr
