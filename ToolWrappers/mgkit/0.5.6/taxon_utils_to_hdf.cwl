class: CommandLineTool
id: taxon_utils_to_hdf.cwl
inputs:
- id: in_table_name
  doc: 'Name of the table/storage to use  [default: taxa]'
  type: string?
  inputBinding:
    prefix: --table-name
- id: in_overwrite
  doc: Overwrite the file, instead of appending to it
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_index_size
  doc: "Maximum number of characters for the gene_id\n[default: 12]"
  type: long?
  inputBinding:
    prefix: --index-size
- id: in_chunk_size
  doc: "Chunk size to use when reading the input file\n[default: 5000000]"
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- taxon-utils
- to_hdf
