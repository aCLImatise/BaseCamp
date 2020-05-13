class: CommandLineTool
id: TsvFilter.cwl
inputs:
- id: filter
  doc: Filter string with column name, operation and value,e.g. 'depth > 17'.
  type: string
  inputBinding:
    prefix: -filter
- id: in
  doc: "Input TSV file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: numeric
  doc: "If set, column name is interpreted as a 1-based column number. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -numeric
- id: v
  doc: "Invert filter. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- TsvFilter
