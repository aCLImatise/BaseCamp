class: CommandLineTool
id: pbindexdump.cwl
inputs:
- id: in_format
  doc: 'STR   Output format. Valid choices: (json, cpp). [json]'
  type: boolean
  inputBinding:
    prefix: --format
- id: in_json_indent_level
  doc: INT   JSON indent level. [4]
  type: boolean
  inputBinding:
    prefix: --json-indent-level
- id: in_json_raw
  doc: "Print fields in a layout that more closely reflects the PBI file format (per-field\n\
    columns, not per-record objects."
  type: boolean
  inputBinding:
    prefix: --json-raw
- id: in_input_do_tba_mdot_pbi
  doc: FILE  Input PBI file. If not provided, stdin will be used as input.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbindexdump
