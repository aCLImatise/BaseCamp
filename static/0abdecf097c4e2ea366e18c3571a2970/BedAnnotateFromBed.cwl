class: CommandLineTool
id: BedAnnotateFromBed.cwl
inputs:
- id: in_in_two
  doc: BED file that is used as annotation source.
  type: File
  inputBinding:
    prefix: -in2
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_col
  doc: "Annotation source column (if column number does not exist, 'yes' is used).\n\
    Default value: '4'"
  type: long
  inputBinding:
    prefix: -col
- id: in_clear
  doc: "Clear all annotations present in the 'in' file.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -clear
- id: in_no_duplicates
  doc: "Remove duplicate annotations if several intervals from 'in2' overlap.\nDefault\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_duplicates
- id: in_overlap
  doc: "Annotate overlap with regions in 'in2'. The regular annotation is appended\
    \ in brackets.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap
- id: in_url_decode
  doc: "Decode URL encoded characters\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -url_decode
- id: in_name
  doc: "Use this name as column header of TSV files output files. If unset, the base\
    \ file name if 'in2' is used.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -name
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_name
  doc: "Use this name as column header of TSV files output files. If unset, the base\
    \ file name if 'in2' is used.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- BedAnnotateFromBed
