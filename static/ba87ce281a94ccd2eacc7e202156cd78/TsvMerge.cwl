class: CommandLineTool
id: TsvMerge.cwl
inputs:
- id: in
  doc: Input TSV files that are merged. If only one file is given, each line in this
    file is interpreted as an input file path.
  type: File
  inputBinding:
    prefix: -in
- id: cols
  doc: Comma-separated list of column names used as key for merging.
  type: string
  inputBinding:
    prefix: -cols
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
- id: simple
  doc: "Fast and memory-efficient mode for merging files that are ordered in the same\
    \ way and have no missing lines. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -simple
- id: mv
  doc: "Missing value, i.e. value that is inserted when key is missing in a file.\
    \ Default value: ''"
  type: string
  inputBinding:
    prefix: -mv
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
- TsvMerge
