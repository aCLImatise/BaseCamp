class: CommandLineTool
id: taxon_utils_to_hdf.cwl
inputs:
- id: in_verbose
  doc: "-n, --table-name TEXT     Name of the table/storage to use  [default: taxa]\n\
    -w, --overwrite           Overwrite the file, instead of appending to it\n-s,\
    \ --index-size INTEGER  Maximum number of characters for the gene_id\n[default:\
    \ 12]\n-c, --chunk-size INTEGER  Chunk size to use when reading the input file\n\
    [default: 5000000]\n--progress                Shows Progress Bar\n--help     \
    \               Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxon-utils
- to_hdf
