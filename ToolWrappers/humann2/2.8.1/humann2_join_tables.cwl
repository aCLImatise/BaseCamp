class: CommandLineTool
id: humann2_join_tables.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: the directory of tables
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: the table to write
  type: string
  inputBinding:
    prefix: --output
- id: in_file_name
  doc: only join tables with this string included in the file name
  type: File
  inputBinding:
    prefix: --file_name
- id: in_search_subdirectories
  doc: "search sub-directories of input folder for files\n"
  type: boolean
  inputBinding:
    prefix: --search-subdirectories
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- humann2_join_tables
