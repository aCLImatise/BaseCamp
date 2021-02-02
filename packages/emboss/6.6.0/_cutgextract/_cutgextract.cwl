class: CommandLineTool
id: _cutgextract.cwl
inputs:
- id: in_release
  doc: string     CUTG release (Any string)
  type: boolean
  inputBinding:
    prefix: -release
- id: in_wild_spec
  doc: string     [*.codon] Type of codon file (Any string)
  type: boolean
  inputBinding:
    prefix: -wildspec
- id: in_species
  doc: string     [*] Species wildcard (Any string)
  type: boolean
  inputBinding:
    prefix: -species
- id: in_all_records
  doc: "boolean    [N] Include all records, including those\nwith warnings"
  type: boolean
  inputBinding:
    prefix: -allrecords
- id: in_filename
  doc: "string     Single output filename to override automatic\none file for each\
    \ species. Leave blank to\ngenerate the filenames. Specify a filename\nto combine\
    \ several species into one file.\n(Any string)"
  type: File
  inputBinding:
    prefix: -filename
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename
  doc: "string     Single output filename to override automatic\none file for each\
    \ species. Leave blank to\ngenerate the filenames. Specify a filename\nto combine\
    \ several species into one file.\n(Any string)"
  type: File
  outputBinding:
    glob: $(inputs.in_filename)
cwlVersion: v1.1
baseCommand:
- _cutgextract
