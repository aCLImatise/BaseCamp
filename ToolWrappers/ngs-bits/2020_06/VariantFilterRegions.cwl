class: CommandLineTool
id: VariantFilterRegions.cwl
inputs:
- id: in_in
  doc: Input variant list.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output variant list.
  type: File?
  inputBinding:
    prefix: -out
- id: in_reg
  doc: "Input target region in BED format.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -reg
- id: in_single_target_region
  doc: "Single target region in the format chr17:41194312-41279500.\nDefault value:\
    \ ''"
  type: long?
  inputBinding:
    prefix: -r
- id: in_mark
  doc: "If set, instead of removing variants, they are marked with the given flag\
    \ in the 'filter' column.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -mark
- id: in_in_v
  doc: "Inverts the filter, i.e. variants inside the region are removed/marked.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -inv
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
hints: []
cwlVersion: v1.1
baseCommand:
- VariantFilterRegions
