class: CommandLineTool
id: jq.cwl
inputs:
- id: c
  doc: compact instead of pretty-printed output;
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: use `null` as the single input value;
  type: boolean
  inputBinding:
    prefix: -n
- id: e
  doc: set the exit status code based on the output;
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: read (slurp) all inputs into an array; apply filter to it;
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: output raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -r
- id: r
  doc: read raw strings, not JSON texts;
  type: boolean
  inputBinding:
    prefix: -R
- id: c
  doc: colorize JSON;
  type: boolean
  inputBinding:
    prefix: -C
- id: m
  doc: monochrome (don't colorize JSON);
  type: boolean
  inputBinding:
    prefix: -M
- id: s
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
outputs: []
cwlVersion: v1.1
baseCommand:
- jq
