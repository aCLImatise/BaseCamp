class: CommandLineTool
id: TsvSlice.cwl
inputs:
- id: in_cols
  doc: Comma-separated list of column names to extract.
  type: string?
  inputBinding:
    prefix: -cols
- id: in_in
  doc: "Input TSV file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_numeric
  doc: "If set, column names are interpreted as 1-based column numbers.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -numeric
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- TsvSlice
