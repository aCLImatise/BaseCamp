class: CommandLineTool
id: abricate.cwl
inputs:
- id: in_debug
  doc: Verbose debug output.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: Quiet mode, no stderr output.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_check
  doc: Check dependencies are installed.
  type: boolean
  inputBinding:
    prefix: --check
- id: in_threads
  doc: '[N]   Use this many BLAST+ threads [1].'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_fof_n
  doc: '[X]      Run on files listed in this file [].'
  type: boolean
  inputBinding:
    prefix: --fofn
- id: in_setup_db
  doc: Format all the BLAST databases.
  type: boolean
  inputBinding:
    prefix: --setupdb
- id: in_list
  doc: List included databases.
  type: boolean
  inputBinding:
    prefix: --list
- id: in_datadir
  doc: '[X]   Databases folder [/usr/local/db].'
  type: boolean
  inputBinding:
    prefix: --datadir
- id: in_db
  doc: '[X]        Database to use [ncbi].'
  type: boolean
  inputBinding:
    prefix: --db
- id: in_noheader
  doc: Suppress column header row.
  type: boolean
  inputBinding:
    prefix: --noheader
- id: in_csv
  doc: Output CSV instead of TSV.
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_no_path
  doc: Strip filename paths from FILE column.
  type: boolean
  inputBinding:
    prefix: --nopath
- id: in_mini_d
  doc: '[n.n]   Minimum DNA %identity [80].'
  type: boolean
  inputBinding:
    prefix: --minid
- id: in_min_cov
  doc: '[n.n]  Minimum DNA %coverage [80].'
  type: boolean
  inputBinding:
    prefix: --mincov
- id: in_summary
  doc: Summarize multiple reports into a table.
  type: boolean
  inputBinding:
    prefix: --summary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abricate
