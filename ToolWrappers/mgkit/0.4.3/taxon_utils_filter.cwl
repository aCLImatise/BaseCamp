class: CommandLineTool
id: taxon_utils_filter.cwl
inputs:
- id: in_verbose
  doc: "-p, --table\n-t, --taxonomy TEXT             Taxonomy file  [required]\n-i,\
    \ --include-taxon-id INTEGER  Include only taxon_ids\n-in, --include-taxon-name\
    \ TEXT  Include only taxon_names\n-e, --exclude-taxon-id INTEGER  Exclude taxon_ids\n\
    -en, --exclude-taxon-name TEXT  Exclude taxon_names\n--progress              \
    \        Shows Progress Bar\n--help                          Show this message\
    \ and exit.\n"
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
- filter
