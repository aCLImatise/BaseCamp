class: CommandLineTool
id: csvtk_mutate2.cwl
inputs:
- id: in_digits
  doc: number of digits after the dot (default 2)
  type: long
  inputBinding:
    prefix: --digits
- id: in_digits_as_string
  doc: treate digits as string to avoid converting big digits into scientific notation
  type: boolean
  inputBinding:
    prefix: --digits-as-string
- id: in_expression
  doc: "artithmetic/string expressions. e.g. \"'string'\", '\"abc\"', ' $a + \"-\"\
    \ + $b ', '$1 + $2', '$a / $b', ' $1 > 100 ? \"big\" : \"small\" '"
  type: string
  inputBinding:
    prefix: --expression
- id: in_name
  doc: new column name
  type: string
  inputBinding:
    prefix: --name
- id: in_chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long
  inputBinding:
    prefix: --chunk-size
- id: in_comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string
  inputBinding:
    prefix: --comment-char
- id: in_delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: File
  inputBinding:
    prefix: --delimiter
- id: in_ignore_empty_row
  doc: ignore empty rows
  type: boolean
  inputBinding:
    prefix: --ignore-empty-row
- id: in_ignore_illegal_row
  doc: ignore illegal rows
  type: boolean
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File
  inputBinding:
    prefix: --infile-list
- id: in_lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean
  inputBinding:
    prefix: --lazy-quotes
- id: in_no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean
  inputBinding:
    prefix: --no-header-row
- id: in_num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long
  inputBinding:
    prefix: --num-cpus
- id: in_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File
  inputBinding:
    prefix: --out-delimiter
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean
  inputBinding:
    prefix: --out-tabs
- id: in_tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean
  inputBinding:
    prefix: --tabs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: File
  outputBinding:
    glob: $(inputs.in_out_delimiter)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- csvtk
- mutate2
