class: CommandLineTool
id: ../../../crimson.cwl
inputs:
- id: in_fmt
  doc: '[json|yaml]  Output file format. Default: json.'
  type: File
  inputBinding:
    prefix: --fmt
- id: in_indent
  doc: "Indentation level. Ignored if the --compact flag is set.\nDefault: 2."
  type: long
  inputBinding:
    prefix: --indent
- id: in_compact
  doc: "Whether to create a compact JSON or not. Ignored if\noutput format is YAML."
  type: boolean
  inputBinding:
    prefix: --compact
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fmt
  doc: '[json|yaml]  Output file format. Default: json.'
  type: File
  outputBinding:
    glob: $(inputs.in_fmt)
cwlVersion: v1.1
baseCommand:
- crimson
