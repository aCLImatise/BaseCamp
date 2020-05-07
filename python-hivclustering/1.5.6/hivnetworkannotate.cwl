class: CommandLineTool
id: hivnetworkannotate.cwl
inputs:
- id: o
  doc: '[OUTPUT], --output [OUTPUT] Output the annotated JSON network file to'
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: '[NETWORK], --network [NETWORK] The input network file to process'
  type: boolean
  inputBinding:
    prefix: -n
- id: x
  doc: MISSING, --missing MISSING MISSING If desired, provide a value to inject for
    nodes that do not have an attribute value specified
  type: string
  inputBinding:
    prefix: -x
- id: clear
  doc: Flush existing attributes
  type: boolean
  inputBinding:
    prefix: --clear
- id: index
  doc: The name of the column that indexes records (patient ID); default is to index
    on the first column
  type: string
  inputBinding:
    prefix: --index
- id: in_place
  doc: Write attributes to the input file (cannot be stdin)
  type: boolean
  inputBinding:
    prefix: --inplace
- id: attributes
  doc: The JSON file with node attributes
  type: string
  inputBinding:
    prefix: --attributes
- id: tab
  doc: A TSV file with node attributes
  type: string
  inputBinding:
    prefix: --tab
- id: csv
  doc: A CSV file with node attributes
  type: string
  inputBinding:
    prefix: --csv
- id: f
  doc: FIELD FIELD FIELD, --field FIELD FIELD FIELD FIELD Describe an argument to
    be added to invididual nodes as "name" "label" "type" "transform"; currently supported
    types are "String", "enum", "Date", "Number"; transform must be specified as a
    lambda, an empty string to use an identity map, or a python style dict to specify
    an enum; "fulldate" is a predefined option to reformat the date using the default
    hivtrace-viz format
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- hivnetworkannotate
