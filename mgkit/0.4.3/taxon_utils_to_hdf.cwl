class: CommandLineTool
id: taxon_utils_to_hdf.cwl
inputs:
- id: table_name
  doc: 'Name of the table/storage to use  [default: taxa]'
  type: string
  inputBinding:
    prefix: --table-name
- id: overwrite
  doc: Overwrite the file, instead of appending to it
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: index_size
  doc: 'Maximum number of characters for the gene_id [default: 12]'
  type: long
  inputBinding:
    prefix: --index-size
- id: chunk_size
  doc: 'Chunk size to use when reading the input file [default: 5000000]'
  type: long
  inputBinding:
    prefix: --chunk-size
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- to_hdf
