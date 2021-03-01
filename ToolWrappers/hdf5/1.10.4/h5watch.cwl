class: CommandLineTool
id: h5watch.cwl
inputs:
- id: in_label
  doc: Label members of compound typed dataset.
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_simple
  doc: Use a machine-readable output format.
  type: boolean?
  inputBinding:
    prefix: --simple
- id: in_dim
  doc: Monitor changes in size of dataset dimensions only.
  type: boolean?
  inputBinding:
    prefix: --dim
- id: in_width
  doc: "Set the number of columns to N for output.\nA value of 0 sets the number of\
    \ columns to the\nmaximum (65535). The default width is 80 columns."
  type: long?
  inputBinding:
    prefix: --width
- id: in_polling
  doc: "Set the polling interval to N (in seconds) when the\ndataset will be checked\
    \ for appended data.  The default\npolling interval is 1."
  type: long?
  inputBinding:
    prefix: --polling
- id: in_fields
  doc: "Display data for the fields specified in <list_of_fields>\nfor a compound\
    \ data type.  <list_of_fields> can be\nspecified as follows:\n1) A comma-separated\
    \ list of field names in a\ncompound data type.  \",\" is the separator\nfor field\
    \ names while \".\" is the separator\nfor a nested field.\n2) A single field name\
    \ in a compound data type.\nCan use this option multiple times.\nNote that backslash\
    \ is the escape character to avoid\ncharacters in field names that conflict with\
    \ the tool's\nseparators."
  type: long?
  inputBinding:
    prefix: --fields
- id: in_options
  doc: --help            Print a usage message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- h5watch
