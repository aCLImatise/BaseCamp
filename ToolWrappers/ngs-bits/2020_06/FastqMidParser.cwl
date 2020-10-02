class: CommandLineTool
id: FastqMidParser.cwl
inputs:
- id: in_in
  doc: Input gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TXT file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_lines
  doc: "The number of FASTQ entries in the input file to parse. 0 is unlimited.\n\
    Default value: '1000'"
  type: long
  inputBinding:
    prefix: -lines
- id: in_mids
  doc: "The number of top-ranking MIDs to print. 0 is unlimited.\nDefault value: '20'"
  type: long
  inputBinding:
    prefix: -mids
- id: in_sheet
  doc: "Optional sample sheet CSV file as provided to CASAVA. If given, the closest\
    \ match in the sample sheet is printed after each MID.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -sheet
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
  doc: "Output TXT file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- FastqMidParser
