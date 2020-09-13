class: CommandLineTool
id: ../../../rename_from_fasta.sh.cwl
inputs:
- id: in_file_to_rename
  doc: file to rename
  type: File
  inputBinding:
    prefix: -i
- id: in_fata_file_finally
  doc: fata file whose names will be finally printed
  type: long
  inputBinding:
    prefix: '-1'
- id: in_names_will_replaced
  doc: fata file whose names will be replaced
  type: long
  inputBinding:
    prefix: '-2'
- id: in_directory_optional_default
  doc: directory (optional). By default the file is replaced in the same location
  type: File
  inputBinding:
    prefix: -o
- id: in_file_name_will
  doc: file name (".rename" will be added at the end)
  type: File
  inputBinding:
    prefix: -f
- id: in_file_used_supplied
  doc: file to be used if fasta files are not supplied
  type: File
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rename_from_fasta.sh
