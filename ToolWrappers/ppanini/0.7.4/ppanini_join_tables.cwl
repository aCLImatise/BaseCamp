class: CommandLineTool
id: ppanini_join_tables.cwl
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
  doc: search sub-directories of input folder for files
  type: boolean
  inputBinding:
    prefix: --search-subdirectories
- id: in_mapping_uniref
  doc: 'Mapping file: gene to uniref90 file'
  type: File
  inputBinding:
    prefix: --mapping-uniref
- id: in_mapping_cluster
  doc: 'Mapping file: cluster to genes file'
  type: File
  inputBinding:
    prefix: --mapping-cluster
- id: in_resume
  doc: bypass commands if the output files exist
  type: boolean
  inputBinding:
    prefix: --resume
- id: in_scale
  doc: scale the abundance table
  type: string
  inputBinding:
    prefix: --scale
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ppanini_join_tables
