class: CommandLineTool
id: csvtk_summary.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: decimal_width
  doc: limit floats to N decimal points (default 2)
  type: long
  inputBinding:
    prefix: --decimal-width
- id: fields
  doc: 'operations on these fields. e.g -f 1:count,1:sum or -f colA:mean. available
    operations: collapse, count, countn, countunique, entropy, first, last, max, mean,
    median, min, prod, q1, q2, q3, rand, stdev, sum, uniq, variance'
  type: string
  inputBinding:
    prefix: --fields
- id: groups
  doc: group via fields. e.g -f 1,2 or -f columnA,columnB
  type: string
  inputBinding:
    prefix: --groups
- id: ignore_non_digits
  doc: ignore non-digital values like "NA" or "N/A"
  type: boolean
  inputBinding:
    prefix: --ignore-non-digits
- id: rand_seed
  doc: rand seed for operation "rand" (default 11)
  type: long
  inputBinding:
    prefix: --rand-seed
- id: separate_r
  doc: separater for collapsed data (default "; ")
  type: string
  inputBinding:
    prefix: --separater
- id: chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long
  inputBinding:
    prefix: --chunk-size
- id: comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string
  inputBinding:
    prefix: --comment-char
- id: delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: string
  inputBinding:
    prefix: --delimiter
- id: ignore_empty_row
  doc: ignore empty rows
  type: boolean
  inputBinding:
    prefix: --ignore-empty-row
- id: ignore_illegal_row
  doc: ignore illegal rows
  type: boolean
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean
  inputBinding:
    prefix: --lazy-quotes
- id: no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean
  inputBinding:
    prefix: --no-header-row
- id: num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long
  inputBinding:
    prefix: --num-cpus
- id: out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: string
  inputBinding:
    prefix: --out-delimiter
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean
  inputBinding:
    prefix: --out-tabs
- id: tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean
  inputBinding:
    prefix: --tabs
outputs: []
cwlVersion: v1.1
baseCommand:
- csvtk
- summary
