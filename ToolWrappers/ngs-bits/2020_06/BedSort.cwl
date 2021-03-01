class: CommandLineTool
id: BedSort.cwl
inputs:
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_with_name
  doc: "Uses name column (i.e. the 4th column) to sort if chr/start/end are equal.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -with_name
- id: in_uniq
  doc: "If set, entries with the same chr/start/end are removed after sorting.\nDefault\
    \ value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -uniq
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
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- BedSort
