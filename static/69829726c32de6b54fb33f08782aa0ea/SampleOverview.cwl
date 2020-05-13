class: CommandLineTool
id: SampleOverview.cwl
inputs:
- id: in
  doc: Input variant lists in GSvar format.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output variant list file in GSvar format.
  type: File
  inputBinding:
    prefix: -out
- id: window
  doc: "Window to consider around indel positions to compensate for differing alignments.\
    \ Default value: '100'"
  type: long
  inputBinding:
    prefix: -window
- id: add_cols
  doc: "Comma-separated list of input columns that shall be added to the output. By\
    \ default, all columns that are present in all input files. Default value: '[auto]'"
  type: string
  inputBinding:
    prefix: -add_cols
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
- SampleOverview
