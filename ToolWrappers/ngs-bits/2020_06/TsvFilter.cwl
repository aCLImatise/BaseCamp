class: CommandLineTool
id: TsvFilter.cwl
inputs:
- id: in_filter
  doc: Filter string with column name, operation and value,e.g. 'depth > 17'.
  type: string
  inputBinding:
    prefix: -filter
- id: in_in
  doc: "Input TSV file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_numeric
  doc: "If set, column name is interpreted as a 1-based column number.\nDefault value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -numeric
- id: in_invert_filterdefault_value
  doc: "Invert filter.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- TsvFilter
