class: CommandLineTool
id: jq.cwl
inputs:
- id: in_compact_instead_prettyprinted
  doc: compact instead of pretty-printed output;
  type: boolean
  inputBinding:
    prefix: -c
- id: in_use_null_single
  doc: use `null` as the single input value;
  type: boolean
  inputBinding:
    prefix: -n
- id: in_set_status_code
  doc: set the exit status code based on the output;
  type: boolean
  inputBinding:
    prefix: -e
- id: in_read_slurp_inputs
  doc: read (slurp) all inputs into an array; apply filter to it;
  type: boolean
  inputBinding:
    prefix: -s
- id: in_output_raw_strings
  doc: output raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -r
- id: in_read_raw_strings
  doc: read raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -R
- id: in_colorize_json
  doc: colorize JSON;
  type: boolean
  inputBinding:
    prefix: -C
- id: in_monochrome_colorize_json
  doc: monochrome (don't colorize JSON);
  type: boolean
  inputBinding:
    prefix: -M
- id: in_sort_keys_objects
  doc: sort keys of objects on output;
  type: boolean
  inputBinding:
    prefix: -S
- id: in_tab
  doc: use tabs for indentation;
  type: boolean
  inputBinding:
    prefix: --tab
- id: in_arg
  doc: v      set variable $a to value <v>;
  type: string
  inputBinding:
    prefix: --arg
- id: in_arg_json
  doc: v  set variable $a to JSON value <v>;
  type: string
  inputBinding:
    prefix: --argjson
- id: in_slurp_file
  doc: f        set variable $a to an array of JSON texts read from <f>;
  type: string
  inputBinding:
    prefix: --slurpfile
- id: in_jq_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jq
