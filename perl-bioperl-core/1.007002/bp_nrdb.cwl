class: CommandLineTool
id: ../../../bp_nrdb.pl.cwl
inputs:
- id: filename_db_written
  doc: '- the filename the db is written (STDOUT by default)'
  type: File
  inputBinding:
    prefix: -o
- id: filename_append_db
  doc: '- the filename to append the db to'
  type: File
  inputBinding:
    prefix: -a
- id: minimum_required_sequence
  doc: '#                  - minimum required sequence length'
  type: boolean
  inputBinding:
    prefix: -l
- id: _check_duplicates
  doc: '- do not check for duplicates'
  type: boolean
  inputBinding:
    prefix: -i
- id: max_number_descriptions
  doc: '#                  - max number of descriptions to report per seq'
  type: boolean
  inputBinding:
    prefix: -n
- id: delimiter_use_consecutive
  doc: '#                  - delimiter to use between consecutive descriptions'
  type: boolean
  inputBinding:
    prefix: -d
- id: use_database_i
  doc: '- use database id prefixes from command line'
  type: boolean
  inputBinding:
    prefix: -p
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: file_three
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_nrdb.pl
