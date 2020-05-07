class: CommandLineTool
id: crimson.cwl
inputs:
- id: fmt
  doc: '[json|yaml]  Output file format. Default: json.'
  type: boolean
  inputBinding:
    prefix: --fmt
- id: indent
  doc: 'Indentation level. Ignored if the --compact flag is set. Default: 2.'
  type: long
  inputBinding:
    prefix: --indent
- id: compact
  doc: Whether to create a compact JSON or not. Ignored if output format is YAML.
  type: boolean
  inputBinding:
    prefix: --compact
outputs: []
cwlVersion: v1.1
baseCommand:
- crimson
