class: CommandLineTool
id: VcfSort.cwl
inputs:
- id: in
  doc: Input variant list.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output variant list.
  type: File
  inputBinding:
    prefix: -out
- id: qual
  doc: "Also sort according to variant quality. Ignored if 'fai' file is given. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -qual
- id: fai
  doc: "FAI file defining different chromosome order. Default value: ''"
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
- VcfSort
