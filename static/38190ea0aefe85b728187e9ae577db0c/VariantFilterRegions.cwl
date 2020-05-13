class: CommandLineTool
id: VariantFilterRegions.cwl
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
- id: reg
  doc: "Input target region in BED format. Default value: ''"
  type: File
  inputBinding:
    prefix: -reg
- id: r
  doc: "Single target region in the format chr17:41194312-41279500. Default value:\
    \ ''"
  type: string
  inputBinding:
    prefix: -r
- id: mark
  doc: "If set, instead of removing variants, they are marked with the given flag\
    \ in the 'filter' column. Default value: ''"
  type: string
  inputBinding:
    prefix: -mark
- id: in_v
  doc: "Inverts the filter, i.e. variants inside the region are removed/marked. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -inv
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
- VariantFilterRegions
