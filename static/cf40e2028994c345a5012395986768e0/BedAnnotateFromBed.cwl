class: CommandLineTool
id: BedAnnotateFromBed.cwl
inputs:
- id: in2
  doc: BED file that is used as annotation source.
  type: File
  inputBinding:
    prefix: -in2
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
- id: col
  doc: "Annotation source column (if column number does not exist, 'yes' is used).\
    \ Default value: '4'"
  type: long
  inputBinding:
    prefix: -col
- id: clear
  doc: "Clear all annotations present in the 'in' file. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -clear
- id: no_duplicates
  doc: "Remove duplicate annotations if several intervals from 'in2' overlap. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_duplicates
- id: overlap
  doc: "Annotate overlap with regions in 'in2'. The regular annotation is appended\
    \ in brackets. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap
- id: url_decode
  doc: "Decode URL encoded characters Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -url_decode
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
- BedAnnotateFromBed
