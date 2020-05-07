class: CommandLineTool
id: humann2_join_tables.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: the directory of tables
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the table to write
  type: string
  inputBinding:
    prefix: --output
- id: file_name
  doc: only join tables with this string included in the file name
  type: File
  inputBinding:
    prefix: --file_name
- id: search_subdirectories
  doc: search sub-directories of input folder for files
  type: boolean
  inputBinding:
    prefix: --search-subdirectories
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_join_tables
