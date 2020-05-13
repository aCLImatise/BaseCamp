class: CommandLineTool
id: ppanini_join_tables.cwl
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
- id: mapping_uniref
  doc: 'Mapping file: gene to uniref90 file'
  type: string
  inputBinding:
    prefix: --mapping-uniref
- id: mapping_cluster
  doc: 'Mapping file: cluster to genes file'
  type: string
  inputBinding:
    prefix: --mapping-cluster
- id: resume
  doc: bypass commands if the output files exist
  type: boolean
  inputBinding:
    prefix: --resume
- id: scale
  doc: scale the abundance table
  type: string
  inputBinding:
    prefix: --scale
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_join_tables
