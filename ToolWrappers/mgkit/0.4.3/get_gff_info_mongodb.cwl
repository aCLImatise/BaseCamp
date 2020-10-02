class: CommandLineTool
id: get_gff_info_mongodb.cwl
inputs:
- id: in_verbose
  doc: "-t, --taxonomy FILENAME  Taxonomy used to populate the lineage\n-c, --no-cache\
    \           No cache for the lineage function\n-i, --indent INTEGER     If used,\
    \ the json will be written in a human\nreadble form\n--progress              \
    \ Shows Progress Bar\n--help                   Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gff_file
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
- get-gff-info
- mongodb
