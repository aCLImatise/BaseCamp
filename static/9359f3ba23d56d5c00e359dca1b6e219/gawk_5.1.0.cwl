class: CommandLineTool
id: gawk_5.1.0.cwl
inputs:
- id: in_field_separator
  doc: =val              --assign=var=val
  type: File?
  inputBinding:
    prefix: --field-separator
- id: in_characters_as_bytes
  doc: '[file]                --dump-variables[=file]'
  type: boolean?
  inputBinding:
    prefix: --characters-as-bytes
- id: in_e
  doc: "'program-text'       --source='program-text'"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_non_decimal_data
  doc: '[file]                --pretty-print[=file]'
  type: boolean?
  inputBinding:
    prefix: --non-decimal-data
- id: in_posix
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_gnu
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_style
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gawk:5.1.0
cwlVersion: v1.1
baseCommand:
- gawk-5.1.0
