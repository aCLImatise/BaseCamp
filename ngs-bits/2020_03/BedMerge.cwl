class: CommandLineTool
id: BedMerge.cwl
inputs:
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: keep_b2b
  doc: "Do not merge non-overlapping but adjacent (back-to-back) regions. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -keep_b2b
- id: merge_names
  doc: "Merge name columns instead of removing all annotations. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -merge_names
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
- BedMerge
