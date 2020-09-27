class: CommandLineTool
id: fasta2DB.cwl
inputs:
- id: in_import_files_listed
  doc: ': import files listed 1/line in given file.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_import_data_stdin
  doc: ": import data from stdin, use optiona name as data source.\n: otherwise, import\
    \ sequence of specified files.\n"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta2DB
