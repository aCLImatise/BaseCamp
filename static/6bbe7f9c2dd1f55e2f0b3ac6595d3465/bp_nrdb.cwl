class: CommandLineTool
id: bp_nrdb.pl.cwl
inputs:
- id: o
  doc: '- the filename the db is written (STDOUT by default)'
  type: File
  inputBinding:
    prefix: -o
- id: a
  doc: '- the filename to append the db to'
  type: File
  inputBinding:
    prefix: -a
- id: l
  doc: '#                  - minimum required sequence length'
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: '- do not check for duplicates'
  type: boolean
  inputBinding:
    prefix: -i
- id: n
  doc: '#                  - max number of descriptions to report per seq'
  type: boolean
  inputBinding:
    prefix: -n
- id: d
  doc: '#                  - delimiter to use between consecutive descriptions'
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: '- use database id prefixes from command line'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_nrdb.pl
