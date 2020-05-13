class: CommandLineTool
id: abricate.cwl
inputs:
- id: debug
  doc: Verbose debug output.
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: Quiet mode, no stderr output.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: check
  doc: Check dependencies are installed.
  type: boolean
  inputBinding:
    prefix: --check
- id: threads
  doc: '[N]   Use this many BLAST+ threads [1].'
  type: boolean
  inputBinding:
    prefix: --threads
- id: fof_n
  doc: '[X]      Run on files listed in this file [].'
  type: boolean
  inputBinding:
    prefix: --fofn
- id: setup_db
  doc: Format all the BLAST databases.
  type: boolean
  inputBinding:
    prefix: --setupdb
- id: list
  doc: List included databases.
  type: boolean
  inputBinding:
    prefix: --list
- id: datadir
  doc: '[X]   Databases folder [/tmp/tmp8we49qhd/db].'
  type: boolean
  inputBinding:
    prefix: --datadir
- id: db
  doc: '[X]        Database to use [ncbi].'
  type: boolean
  inputBinding:
    prefix: --db
- id: noheader
  doc: Suppress column header row.
  type: boolean
  inputBinding:
    prefix: --noheader
- id: csv
  doc: Output CSV instead of TSV.
  type: boolean
  inputBinding:
    prefix: --csv
- id: no_path
  doc: Strip filename paths from FILE column.
  type: boolean
  inputBinding:
    prefix: --nopath
- id: mini_d
  doc: '[n.n]   Minimum DNA %identity [80].'
  type: boolean
  inputBinding:
    prefix: --minid
- id: min_cov
  doc: '[n.n]  Minimum DNA %coverage [80].'
  type: boolean
  inputBinding:
    prefix: --mincov
- id: summary
  doc: Summarize multiple reports into a table.
  type: boolean
  inputBinding:
    prefix: --summary
outputs: []
cwlVersion: v1.1
baseCommand:
- abricate
