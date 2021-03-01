class: CommandLineTool
id: VariantFilterAnnotations.cwl
inputs:
- id: in_in
  doc: Input variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -out
- id: in_filters
  doc: Filter definition file.
  type: File?
  inputBinding:
    prefix: -filters
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
- VariantFilterAnnotations
