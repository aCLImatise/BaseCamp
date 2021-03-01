class: CommandLineTool
id: bp_biofetch_genbank_proxy.pl.cwl
inputs:
- id: in_db
  doc: 'Option  : db'
  type: string
  inputBinding:
    position: 0
- id: in__database_name
  doc: ': database name'
  type: string
  inputBinding:
    position: 1
- id: in_var_2
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: in__dbgenpep_dbgenbank
  doc: ': db=genpep | db=genbank'
  type: string
  inputBinding:
    position: 3
- id: in_var_4
  doc: ': string '
  type: string
  inputBinding:
    position: 4
- id: in_style
  doc: 'Option  : style'
  type: string
  inputBinding:
    position: 0
- id: in__html_tags
  doc: ': +/- HTML tags'
  type: string
  inputBinding:
    position: 1
- id: in_var_7
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: in__styleraw_dbhtml
  doc: ': style=raw | db=html'
  type: string
  inputBinding:
    position: 3
- id: in__enum_rawhtml
  doc: ': enum (raw|html)'
  type: string
  inputBinding:
    position: 4
- id: in_format
  doc: 'Option  : format'
  type: string
  inputBinding:
    position: 0
- id: in_format_database_entries
  doc: ': format of the database entries returned'
  type: string
  inputBinding:
    position: 1
- id: in__optional
  doc: ': optional'
  type: string
  inputBinding:
    position: 2
- id: in__formatgenbank
  doc: ': format=genbank'
  type: string
  inputBinding:
    position: 3
- id: in__enum
  doc: ': enum'
  type: string
  inputBinding:
    position: 4
- id: in_id
  doc: 'Option  : id'
  type: string
  inputBinding:
    position: 0
- id: in_unique_database_identifiers
  doc: ': unique database identifier(s)'
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: in__dbj_idjhsfos
  doc: ': db=J00231 | id=J00231+HSFOS'
  type: string
  inputBinding:
    position: 3
- id: in_var_19
  doc: ': string '
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_biofetch_genbank_proxy.pl
