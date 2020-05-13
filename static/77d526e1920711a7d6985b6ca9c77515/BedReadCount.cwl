class: CommandLineTool
id: BedReadCount.cwl
inputs:
- id: bam
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -bam
- id: min_mapq
  doc: "Minimum mapping quality. Default value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
- id: in
  doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN. Default value: ''"
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
- BedReadCount
