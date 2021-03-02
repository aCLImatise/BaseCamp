class: CommandLineTool
id: VcfSort.cwl
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
- id: in_qual
  doc: "Also sort according to variant quality. Ignored if 'fai' file is given.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -qual
- id: in_fai
  doc: "FAI file defining different chromosome order.\nDefault value: ''"
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
hints: []
cwlVersion: v1.1
baseCommand:
- VcfSort
