class: CommandLineTool
id: newUCSCdb.pl.cwl
inputs:
- id: in_db
  doc: <string>  new database name                        ()
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_fa
  doc: <string>  (multi) fasta file holding sequence      ()
  type: boolean?
  inputBinding:
    prefix: -fa
- id: in_tax
  doc: <string>  taxonomy ID                              ()
  type: boolean?
  inputBinding:
    prefix: -tax
- id: in_genome
  doc: <string>  genome name                              ()
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_sname
  doc: <string>  scientific name                          ()
  type: boolean?
  inputBinding:
    prefix: -sname
- id: in_assembly
  doc: assembly                                 ()
  type: string?
  inputBinding:
    prefix: -assembly
- id: in_pos
  doc: <string>  default position                         ()
  type: boolean?
  inputBinding:
    prefix: -pos
- id: in_key
  doc: <int>     order key                                ()
  type: boolean?
  inputBinding:
    prefix: -key
- id: in_source
  doc: <string>  genome/assembly/annotation source        ()
  type: boolean?
  inputBinding:
    prefix: -source
- id: in_clade
  doc: <string>  genome clade (mammal,plants,bateria,...) ()
  type: boolean?
  inputBinding:
    prefix: -clade
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- newUCSCdb.pl
