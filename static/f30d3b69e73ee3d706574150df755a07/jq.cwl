class: CommandLineTool
id: ../../../jq.cwl
inputs:
- id: compact_instead_prettyprinted
  doc: compact instead of pretty-printed output;
  type: boolean
  inputBinding:
    prefix: -c
- id: use_null_single
  doc: use `null` as the single input value;
  type: boolean
  inputBinding:
    prefix: -n
- id: set_status_code
  doc: set the exit status code based on the output;
  type: boolean
  inputBinding:
    prefix: -e
- id: read_slurp_inputs
  doc: read (slurp) all inputs into an array; apply filter to it;
  type: boolean
  inputBinding:
    prefix: -s
- id: output_raw_strings
  doc: output raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -r
- id: read_raw_strings
  doc: read raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -R
- id: colorize_json
  doc: colorize JSON;
  type: boolean
  inputBinding:
    prefix: -C
- id: monochrome_colorize_json
  doc: monochrome (don't colorize JSON);
  type: boolean
  inputBinding:
    prefix: -M
- id: sort_keys_objects
  doc: sort keys of objects on output;
  type: boolean
  inputBinding:
    prefix: -S
- id: tab
  doc: use tabs for indentation;
  type: boolean
  inputBinding:
    prefix: --tab
- id: arg
  doc: v      set variable $a to value <v>;
  type: string
  inputBinding:
    prefix: --arg
- id: arg_json
  doc: v  set variable $a to JSON value <v>;
  type: string
  inputBinding:
    prefix: --argjson
- id: slurp_file
  doc: f        set variable $a to an array of JSON texts read from <f>;
  type: string
  inputBinding:
    prefix: --slurpfile
- id: jq_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jq
