class: CommandLineTool
id: hgLoadChain.cwl
inputs:
- id: in_t_index
  doc: Include tName in indexes (for non-split chain tables)
  type: boolean
  inputBinding:
    prefix: -tIndex
- id: in_no_bin
  doc: 'suppress bin field, default: bin field is added'
  type: boolean
  inputBinding:
    prefix: -noBin
- id: in_no_sort
  doc: "Don't sort by target (memory-intensive) -- input *must* be\nsorted by target\
    \ already if this option is used."
  type: boolean
  inputBinding:
    prefix: -noSort
- id: in_old_table
  doc: 'to existing table, default: create new table'
  type: string
  inputBinding:
    prefix: -oldTable
- id: in_sql_table
  doc: Create table from .sql file
  type: File
  inputBinding:
    prefix: -sqlTable
- id: in_norm_score
  doc: 'normalized score column to table, default: not added'
  type: string
  inputBinding:
    prefix: -normScore
- id: in_q_prefix
  doc: prepend "xxx" to query name
  type: string
  inputBinding:
    prefix: -qPrefix
- id: in_test
  doc: suppress loading to database
  type: boolean
  inputBinding:
    prefix: -test
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chr_n_track
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgLoadChain
