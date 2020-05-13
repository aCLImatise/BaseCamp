class: CommandLineTool
id: VariantFilterAnnotations.cwl
inputs:
- id: in
  doc: Input variant list in GSvar format.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output variant list in GSvar format.
  type: File
  inputBinding:
    prefix: -out
- id: filters
  doc: Filter definition file.
  type: File
  inputBinding:
    prefix: -filters
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
- VariantFilterAnnotations
