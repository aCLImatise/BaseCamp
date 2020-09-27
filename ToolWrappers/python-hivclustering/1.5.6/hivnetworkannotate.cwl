class: CommandLineTool
id: hivnetworkannotate.cwl
inputs:
- id: in_output_annotated_file
  doc: "[OUTPUT], --output [OUTPUT]\nOutput the annotated JSON network file to"
  type: File
  inputBinding:
    prefix: -o
- id: in_input_network_file
  doc: "[NETWORK], --network [NETWORK]\nThe input network file to process"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_missing__missing
  doc: "MISSING, --missing MISSING MISSING\nIf desired, provide a value to inject\
    \ for nodes that\ndo not have an attribute value specified"
  type: string
  inputBinding:
    prefix: -x
- id: in_clear
  doc: Flush existing attributes
  type: boolean
  inputBinding:
    prefix: --clear
- id: in_index
  doc: "The name of the column that indexes records (patient\nID); default is to index\
    \ on the first column"
  type: string
  inputBinding:
    prefix: --index
- id: in_in_place
  doc: Write attributes to the input file (cannot be stdin)
  type: boolean
  inputBinding:
    prefix: --inplace
- id: in_attributes
  doc: The JSON file with node attributes
  type: File
  inputBinding:
    prefix: --attributes
- id: in_tab
  doc: A TSV file with node attributes
  type: File
  inputBinding:
    prefix: --tab
- id: in_csv
  doc: A CSV file with node attributes
  type: File
  inputBinding:
    prefix: --csv
- id: in_field_field_field
  doc: "FIELD FIELD FIELD, --field FIELD FIELD FIELD FIELD\nDescribe an argument to\
    \ be added to invididual nodes\nas \"name\" \"label\" \"type\" \"transform\";\
    \ currently\nsupported types are \"String\", \"enum\", \"Date\",\n\"Number\";\
    \ transform must be specified as a lambda, an\nempty string to use an identity\
    \ map, or a python style\ndict to specify an enum; \"fulldate\" is a predefined\n\
    option to reformat the date using the default\nhivtrace-viz format\n"
  type: long
  inputBinding:
    prefix: -f
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_network
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_annotated_file
  doc: "[OUTPUT], --output [OUTPUT]\nOutput the annotated JSON network file to"
  type: File
  outputBinding:
    glob: $(inputs.in_output_annotated_file)
cwlVersion: v1.1
baseCommand:
- hivnetworkannotate
