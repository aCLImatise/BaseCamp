class: CommandLineTool
id: TsvMerge.cwl
inputs:
- id: in_in
  doc: Input TSV files that are merged. If only one file is given, each line in this
    file is interpreted as an input file path.
  type: File?
  inputBinding:
    prefix: -in
- id: in_cols
  doc: Comma-separated list of column names used as key for merging.
  type: string?
  inputBinding:
    prefix: -cols
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
- id: in_simple
  doc: "Fast and memory-efficient mode for merging files that are ordered in the same\
    \ way and have no missing lines.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -simple
- id: in_mv
  doc: "Missing value, i.e. value that is inserted when key is missing in a file.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -mv
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
- TsvMerge
