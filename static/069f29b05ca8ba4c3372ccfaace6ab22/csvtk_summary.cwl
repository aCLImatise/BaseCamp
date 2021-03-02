class: CommandLineTool
id: csvtk_summary.cwl
inputs:
- id: in_decimal_width
  doc: limit floats to N decimal points (default 2)
  type: long?
  inputBinding:
    prefix: --decimal-width
- id: in_fields
  doc: 'operations on these fields. e.g -f 1:count,1:sum or -f colA:mean. available
    operations: collapse, count, countn, countunique, entropy, first, last, max, mean,
    median, min, prod, q1, q2, q3, rand, stdev, sum, uniq, variance'
  type: long?
  inputBinding:
    prefix: --fields
- id: in_groups
  doc: group via fields. e.g -f 1,2 or -f columnA,columnB
  type: long?
  inputBinding:
    prefix: --groups
- id: in_ignore_non_digits
  doc: ignore non-digital values like "NA" or "N/A"
  type: boolean?
  inputBinding:
    prefix: --ignore-non-digits
- id: in_rand_seed
  doc: rand seed for operation "rand" (default 11)
  type: long?
  inputBinding:
    prefix: --rand-seed
- id: in_separate_r
  doc: separater for collapsed data (default "; ")
  type: string?
  inputBinding:
    prefix: --separater
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
- summary
