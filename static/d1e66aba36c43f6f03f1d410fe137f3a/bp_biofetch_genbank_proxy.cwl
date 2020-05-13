class: CommandLineTool
id: bp_biofetch_genbank_proxy.pl.cwl
inputs:
- id: option
  doc: ': db'
  type: string
  inputBinding:
    position: 0
- id: descr
  doc: ': database name'
  type: string
  inputBinding:
    position: 1
- id: type
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: usage
  doc: ': db=genpep | db=genbank'
  type: string
  inputBinding:
    position: 3
- id: arg
  doc: ': string '
  type: string
  inputBinding:
    position: 4
- id: option
  doc: ': style'
  type: string
  inputBinding:
    position: 0
- id: descr
  doc: ': +/- HTML tags'
  type: string
  inputBinding:
    position: 1
- id: type
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: usage
  doc: ': style=raw | db=html'
  type: string
  inputBinding:
    position: 3
- id: arg
  doc: ': enum (raw|html)'
  type: string
  inputBinding:
    position: 4
- id: option
  doc: ': format'
  type: string
  inputBinding:
    position: 0
- id: descr
  doc: ': format of the database entries returned'
  type: string
  inputBinding:
    position: 1
- id: type
  doc: ': optional'
  type: string
  inputBinding:
    position: 2
- id: usage
  doc: ': format=genbank'
  type: string
  inputBinding:
    position: 3
- id: arg
  doc: ': enum'
  type: string
  inputBinding:
    position: 4
- id: option
  doc: ': id'
  type: string
  inputBinding:
    position: 0
- id: descr
  doc: ': unique database identifier(s)'
  type: string
  inputBinding:
    position: 1
- id: type
  doc: ': required'
  type: string
  inputBinding:
    position: 2
- id: usage
  doc: ': db=J00231 | id=J00231+HSFOS'
  type: string
  inputBinding:
    position: 3
- id: arg
  doc: ': string '
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_biofetch_genbank_proxy.pl
