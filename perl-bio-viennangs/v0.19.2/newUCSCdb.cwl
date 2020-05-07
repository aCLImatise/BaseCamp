class: CommandLineTool
id: newUCSCdb.pl.cwl
inputs:
- id: db
  doc: <string>  new database name                        ()
  type: boolean
  inputBinding:
    prefix: -db
- id: fa
  doc: <string>  (multi) fasta file holding sequence      ()
  type: boolean
  inputBinding:
    prefix: -fa
- id: tax
  doc: <string>  taxonomy ID                              ()
  type: boolean
  inputBinding:
    prefix: -tax
- id: genome
  doc: <string>  genome name                              ()
  type: boolean
  inputBinding:
    prefix: -genome
- id: sname
  doc: <string>  scientific name                          ()
  type: boolean
  inputBinding:
    prefix: -sname
- id: assembly
  doc: assembly                                 ()
  type: string
  inputBinding:
    prefix: -assembly
- id: pos
  doc: <string>  default position                         ()
  type: boolean
  inputBinding:
    prefix: -pos
- id: key
  doc: <int>     order key                                ()
  type: boolean
  inputBinding:
    prefix: -key
- id: source
  doc: <string>  genome/assembly/annotation source        ()
  type: boolean
  inputBinding:
    prefix: -source
- id: clade
  doc: <string>  genome clade (mammal,plants,bateria,...) ()
  type: boolean
  inputBinding:
    prefix: -clade
outputs: []
cwlVersion: v1.1
baseCommand:
- newUCSCdb.pl
