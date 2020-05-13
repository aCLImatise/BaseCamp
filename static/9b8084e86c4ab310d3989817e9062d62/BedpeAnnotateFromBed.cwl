class: CommandLineTool
id: BedpeAnnotateFromBed.cwl
inputs:
- id: bed
  doc: BED file that is used as annotation source.
  type: File
  inputBinding:
    prefix: -bed
- id: in
  doc: "Input BEDPE file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BEDPE file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: col
  doc: "Annotation source column (default: 4). Default value: '4'"
  type: long
  inputBinding:
    prefix: -col
- id: col_name
  doc: "Name of the annotated column Default value: 'ANNOTATION'"
  type: string
  inputBinding:
    prefix: -col_name
- id: no_duplicates
  doc: "Remove duplicate annotations if several intervals from 'in2' overlap. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_duplicates
- id: url_decode
  doc: "Decode URL encoded characters. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -url_decode
- id: replace_underscore
  doc: "Replaces underscores with spaces in the annotation column. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -replace_underscore
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
- BedpeAnnotateFromBed
