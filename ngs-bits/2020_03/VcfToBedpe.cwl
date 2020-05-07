class: CommandLineTool
id: VcfToBedpe.cwl
inputs:
- id: in
  doc: Input structural variant list in VCF format.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output structural variant list in BEDPE format.
  type: File
  inputBinding:
    prefix: -out
- id: no_sort
  doc: "Do not sort results Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_sort
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
- VcfToBedpe
