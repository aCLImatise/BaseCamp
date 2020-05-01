#!/usr/bin/env cwl-runner

baseCommand:
- hivnetworkannotate
class: CommandLineTool
cwlVersion: v1.0
id: hivnetworkannotate
inputs:
- doc: '[OUTPUT], --output [OUTPUT] Output the annotated JSON network file to'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[NETWORK], --network [NETWORK] The input network file to process'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: MISSING, --missing MISSING MISSING If desired, provide a value to inject for
    nodes that do not have an attribute value specified
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: Flush existing attributes
  id: clear
  inputBinding:
    prefix: --clear
  type: boolean
- doc: The name of the column that indexes records (patient ID); default is to index
    on the first column
  id: index
  inputBinding:
    prefix: --index
  type: string
- doc: Write attributes to the input file (cannot be stdin)
  id: in_place
  inputBinding:
    prefix: --inplace
  type: boolean
- doc: The JSON file with node attributes
  id: attributes
  inputBinding:
    prefix: --attributes
  type: string
- doc: A TSV file with node attributes
  id: tab
  inputBinding:
    prefix: --tab
  type: string
- doc: A CSV file with node attributes
  id: csv
  inputBinding:
    prefix: --csv
  type: string
- doc: FIELD FIELD FIELD, --field FIELD FIELD FIELD FIELD Describe an argument to
    be added to invididual nodes as "name" "label" "type" "transform"; currently supported
    types are "String", "enum", "Date", "Number"; transform must be specified as a
    lambda, an empty string to use an identity map, or a python style dict to specify
    an enum; "fulldate" is a predefined option to reformat the date using the default
    hivtrace-viz format
  id: f
  inputBinding:
    prefix: -f
  type: string
