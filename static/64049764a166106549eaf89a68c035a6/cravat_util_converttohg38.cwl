class: CommandLineTool
id: cravat_util_converttohg38.cwl
inputs:
- id: in_path_sqlite_database
  doc: '[DB]             path to sqlite3 database file'
  type: boolean?
  inputBinding:
    prefix: --db
- id: in_source_genome
  doc: genome assembly of source database
  type: string?
  inputBinding:
    prefix: --sourcegenome
- id: in_cols
  doc: names of the columns to convert
  type: string[]
  inputBinding:
    prefix: --cols
- id: in_tables
  doc: "[TABLES ...]\ntable(s) to convert. If omitted, table name will be\nused as\
    \ chromosome name."
  type: boolean?
  inputBinding:
    prefix: --tables
- id: in_chrom_col
  doc: "chromosome column. If omitted, all tables will be\ntried to be converted.\n"
  type: string?
  inputBinding:
    prefix: --chromcol
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-util
- converttohg38
