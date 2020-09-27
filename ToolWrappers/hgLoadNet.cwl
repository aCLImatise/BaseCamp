class: CommandLineTool
id: hgLoadNet.cwl
inputs:
- id: in_no_bin
  doc: suppress bin field
  type: boolean
  inputBinding:
    prefix: -noBin
- id: in_old_table
  doc: to existing table
  type: string
  inputBinding:
    prefix: -oldTable
- id: in_sql_table
  doc: Create table from .sql file
  type: File
  inputBinding:
    prefix: -sqlTable
- id: in_q_prefix
  doc: prepend "xxx-" to query name
  type: string
  inputBinding:
    prefix: -qPrefix
- id: in_warn
  doc: even with missing fields
  type: string
  inputBinding:
    prefix: -warn
- id: in_test
  doc: loading table
  type: string
  inputBinding:
    prefix: -test
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgLoadNet
