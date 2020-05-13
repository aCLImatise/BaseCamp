class: CommandLineTool
id: BedInfo.cwl
inputs:
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: no_merge
  doc: "If set, the input is not merged before printing statistics. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -nomerge
- id: filename
  doc: "If set, prints the input file name before each line. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -filename
- id: fai
  doc: "If set, checks that the maximum position for each chromosome is not exceeded.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -fai
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
- BedInfo
