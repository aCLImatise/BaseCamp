class: CommandLineTool
id: BedSubtract.cwl
inputs:
- id: in2
  doc: Input BED file which is subtracted from 'in'.
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
- BedSubtract
