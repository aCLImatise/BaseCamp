class: CommandLineTool
id: vdb_diff.2.cwl
inputs:
- id: in_rows
  doc: set of rows to be comparend (default all)
  type: string?
  inputBinding:
    prefix: --rows
- id: in_columns
  doc: "set of columns to be compared (default\nall)"
  type: string?
  inputBinding:
    prefix: --columns
- id: in_table
  doc: name of table (in case of database to be
  type: string?
  inputBinding:
    prefix: --table
- id: in_max_err
  doc: max errors im comparing (default 1)
  type: long?
  inputBinding:
    prefix: --maxerr
- id: in_intersect
  doc: intersect column-set from both runs
  type: boolean?
  inputBinding:
    prefix: --intersect
- id: in_exclude
  doc: exclude these columns from comapring
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_col_by_col
  doc: exclude these columns from comapring
  type: boolean?
  inputBinding:
    prefix: --col-by-col
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_compared
  doc: '-p|--progress                    show progress in percent '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: 'vdb-diff.2 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vdb-diff.2
