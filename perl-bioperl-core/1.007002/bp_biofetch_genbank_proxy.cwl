class: CommandLineTool
id: ../../../bp_biofetch_genbank_proxy.pl.cwl
inputs:
- id: _db
  doc: ': db'
  type: string
  inputBinding:
    position: 0
- id: _database_name
  doc: ': database name'
  type: string
  inputBinding:
    position: 1
- id: var_2
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: _dbgenpep_dbgenbank
  doc: ': db=genpep | db=genbank'
  type: string
  inputBinding:
    position: 3
- id: var_4
  doc: ': string '
  type: string
  inputBinding:
    position: 4
- id: _style
  doc: ': style'
  type: string
  inputBinding:
    position: 0
- id: _html_tags
  doc: ': +/- HTML tags'
  type: string
  inputBinding:
    position: 1
- id: var_7
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: _styleraw_dbhtml
  doc: ': style=raw | db=html'
  type: string
  inputBinding:
    position: 3
- id: _enum_rawhtml
  doc: ': enum (raw|html)'
  type: string
  inputBinding:
    position: 4
- id: _format
  doc: ': format'
  type: string
  inputBinding:
    position: 0
- id: format_database_entries
  doc: ': format of the database entries returned'
  type: string
  inputBinding:
    position: 1
- id: _optional
  doc: ': optional'
  type: string
  inputBinding:
    position: 2
- id: _formatgenbank
  doc: ': format=genbank'
  type: string
  inputBinding:
    position: 3
- id: _enum
  doc: ': enum'
  type: string
  inputBinding:
    position: 4
- id: _i_d
  doc: ': id'
  type: string
  inputBinding:
    position: 0
- id: unique_database_identifiers
  doc: ': unique database identifier(s)'
  type: string
  inputBinding:
    position: 1
- id: var_17
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: _dbj_idjhsfos
  doc: ': db=J00231 | id=J00231+HSFOS'
  type: string
  inputBinding:
    position: 3
- id: var_19
  doc: ': string '
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_biofetch_genbank_proxy.pl
