class: CommandLineTool
id: BedSubtract.cwl
inputs:
- id: in_in_two
  doc: Input BED file which is subtracted from 'in'.
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
cwlVersion: v1.1
baseCommand:
- BedSubtract
