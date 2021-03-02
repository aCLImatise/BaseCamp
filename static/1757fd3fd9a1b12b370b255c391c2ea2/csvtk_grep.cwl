class: CommandLineTool
id: csvtk_grep.cwl
inputs:
- id: in_delete_matched
  doc: delete a pattern right after being matched, this keeps the firstly matched
    data and speedups when using regular expressions
  type: boolean?
  inputBinding:
    prefix: --delete-matched
- id: in_fields
  doc: comma separated key fields, column name or index. e.g. -f 1-3 or -f id,id2
    or -F -f "group*" (default "1")
  type: long?
  inputBinding:
    prefix: --fields
- id: in_fuzzy_fields
  doc: using fuzzy fields, e.g., -F -f "*name" or -F -f "id123*"
  type: boolean?
  inputBinding:
    prefix: --fuzzy-fields
- id: in_ignore_case
  doc: ignore case
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_invert
  doc: invert match
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_line_number
  doc: print line number as the first column ("n")
  type: boolean?
  inputBinding:
    prefix: --line-number
- id: in_no_highlight
  doc: no highlight
  type: boolean?
  inputBinding:
    prefix: --no-highlight
- id: in_pattern
  doc: query pattern (multiple values supported)
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_pattern_file
  doc: pattern files (one pattern per line)
  type: File?
  inputBinding:
    prefix: --pattern-file
- id: in_use_regexp
  doc: patterns are regular expression
  type: boolean?
  inputBinding:
    prefix: --use-regexp
- id: in_verbose
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string?
  inputBinding:
    prefix: --comment-char
- id: in_delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: File?
  inputBinding:
    prefix: --delimiter
- id: in_ignore_empty_row
  doc: ignore empty rows
  type: boolean?
  inputBinding:
    prefix: --ignore-empty-row
- id: in_ignore_illegal_row
  doc: ignore illegal rows
  type: boolean?
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean?
  inputBinding:
    prefix: --lazy-quotes
- id: in_no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean?
  inputBinding:
    prefix: --no-header-row
- id: in_num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long?
  inputBinding:
    prefix: --num-cpus
- id: in_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File?
  inputBinding:
    prefix: --out-delimiter
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean?
  inputBinding:
    prefix: --out-tabs
- id: in_tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean?
  inputBinding:
    prefix: --tabs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_delimiter)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- csvtk
- grep
