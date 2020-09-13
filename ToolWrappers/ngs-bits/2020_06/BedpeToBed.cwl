class: CommandLineTool
id: ../../../BedpeToBed.cwl
inputs:
- id: in_in
  doc: Input BEDPE file.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BED file.
  type: File
  inputBinding:
    prefix: -out
- id: in_merge
  doc: "Merge the resulting BED file.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -merge
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
  doc: Output BED file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BedpeToBed
