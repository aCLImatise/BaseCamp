class: CommandLineTool
id: bp_nrdb.pl.cwl
inputs:
- id: in_filename_db_written
  doc: '- the filename the db is written (STDOUT by default)'
  type: File
  inputBinding:
    prefix: -o
- id: in_filename_append_db
  doc: '- the filename to append the db to'
  type: File
  inputBinding:
    prefix: -a
- id: in_minimum_required_sequence
  doc: '#                  - minimum required sequence length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__check_duplicates
  doc: '- do not check for duplicates'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_max_number_report
  doc: '#                  - max number of descriptions to report per seq'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_delimiter_use_consecutive
  doc: '#                  - delimiter to use between consecutive descriptions'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_use_database_i
  doc: '- use database id prefixes from command line'
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_nrdb.pl
