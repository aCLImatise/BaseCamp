class: CommandLineTool
id: hgLoadNet.cwl
inputs:
- id: no_bin
  doc: suppress bin field
  type: boolean
  inputBinding:
    prefix: -noBin
- id: old_table
  doc: to existing table
  type: string
  inputBinding:
    prefix: -oldTable
- id: sql_table
  doc: Create table from .sql file
  type: string
  inputBinding:
    prefix: -sqlTable
- id: q_prefix
  doc: prepend "xxx-" to query name
  type: string
  inputBinding:
    prefix: -qPrefix
- id: warn
  doc: even with missing fields
  type: string
  inputBinding:
    prefix: -warn
- id: test
  doc: loading table
  type: string
  inputBinding:
    prefix: -test
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadNet
