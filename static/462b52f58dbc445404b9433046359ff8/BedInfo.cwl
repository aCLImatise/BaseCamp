class: CommandLineTool
id: BedInfo.cwl
inputs:
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_no_merge
  doc: "If set, the input is not merged before printing statistics.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -nomerge
- id: in_filename
  doc: "If set, prints the input file name before each line.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -filename
- id: in_fai
  doc: "If set, checks that the maximum position for each chromosome is not exceeded.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -fai
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
- BedInfo
