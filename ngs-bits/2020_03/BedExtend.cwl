class: CommandLineTool
id: BedExtend.cwl
inputs:
- id: n
  doc: The number of bases to extend (on both sides of each region).
  type: long
  inputBinding:
    prefix: -n
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
- id: fai
  doc: "Optional FASTA index file that determines the maximum position for each chromosome.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -fai
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
- BedExtend
