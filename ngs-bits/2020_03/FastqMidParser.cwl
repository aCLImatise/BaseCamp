class: CommandLineTool
id: FastqMidParser.cwl
inputs:
- id: in
  doc: Input gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output TXT file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: lines
  doc: "The number of FASTQ entries in the input file to parse. 0 is unlimited. Default\
    \ value: '1000'"
  type: long
  inputBinding:
    prefix: -lines
- id: mids
  doc: "The number of top-ranking MIDs to print. 0 is unlimited. Default value: '20'"
  type: long
  inputBinding:
    prefix: -mids
- id: sheet
  doc: "Optional sample sheet CSV file as provided to CASAVA. If given, the closest\
    \ match in the sample sheet is printed after each MID. Default value: ''"
  type: File
  inputBinding:
    prefix: -sheet
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
- FastqMidParser
