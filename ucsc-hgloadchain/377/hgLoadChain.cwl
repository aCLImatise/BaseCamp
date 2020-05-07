class: CommandLineTool
id: hgLoadChain.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chr_n_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chr_n_chain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: t_index
  doc: Include tName in indexes (for non-split chain tables)
  type: boolean
  inputBinding:
    prefix: -tIndex
- id: no_bin
  doc: 'suppress bin field, default: bin field is added'
  type: boolean
  inputBinding:
    prefix: -noBin
- id: no_sort
  doc: Don't sort by target (memory-intensive) -- input *must* be sorted by target
    already if this option is used.
  type: boolean
  inputBinding:
    prefix: -noSort
- id: old_table
  doc: 'to existing table, default: create new table'
  type: string
  inputBinding:
    prefix: -oldTable
- id: sql_table
  doc: Create table from .sql file
  type: string
  inputBinding:
    prefix: -sqlTable
- id: norm_score
  doc: 'normalized score column to table, default: not added'
  type: string
  inputBinding:
    prefix: -normScore
- id: q_prefix
  doc: prepend "xxx" to query name
  type: string
  inputBinding:
    prefix: -qPrefix
- id: test
  doc: suppress loading to database
  type: boolean
  inputBinding:
    prefix: -test
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadChain
