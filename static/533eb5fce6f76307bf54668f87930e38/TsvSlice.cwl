class: CommandLineTool
id: TsvSlice.cwl
inputs:
- id: cols
  doc: Comma-separated list of column names to extract.
  type: string
  inputBinding:
    prefix: -cols
- id: in
  doc: "Input TSV file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: numeric
  doc: "If set, column names are interpreted as 1-based column numbers. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -numeric
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
- TsvSlice
