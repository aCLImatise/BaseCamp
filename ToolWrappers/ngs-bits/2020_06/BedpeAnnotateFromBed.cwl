class: CommandLineTool
id: BedpeAnnotateFromBed.cwl
inputs:
- id: in_bed
  doc: BED file that is used as annotation source.
  type: File?
  inputBinding:
    prefix: -bed
- id: in_in
  doc: "Input BEDPE file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_col
  doc: "Annotation source column (default: 4).\nDefault value: '4'"
  type: long?
  inputBinding:
    prefix: -col
- id: in_col_name
  doc: "Name of the annotated column\nDefault value: 'ANNOTATION'"
  type: string?
  inputBinding:
    prefix: -col_name
- id: in_no_duplicates
  doc: "Remove duplicate annotations if several intervals from 'in2' overlap.\nDefault\
    \ value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_duplicates
- id: in_url_decode
  doc: "Decode URL encoded characters.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -url_decode
- id: in_replace_underscore
  doc: "Replaces underscores with spaces in the annotation column.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -replace_underscore
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
- id: out_out
  doc: "Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- BedpeAnnotateFromBed
