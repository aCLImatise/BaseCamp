class: CommandLineTool
id: BedCoverage.cwl
inputs:
- id: bam
  doc: Input BAM file(s).
  type: File
  inputBinding:
    prefix: -bam
- id: min_mapq
  doc: "Minimum mapping quality. Default value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
- id: dup
  doc: "Include reads marked as duplicates. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -dup
- id: in
  doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: mode
  doc: "Mode to optimize run time. Use 'panel' mode if only a small part of the data\
    \ in the BAM file is accessed, e.g. a sub-panel of an exome. Default value: 'default'\
    \ Valid: 'default,panel'"
  type: string
  inputBinding:
    prefix: -mode
- id: decimals
  doc: "Number of decimals used in output. Default value: '2'"
  type: long
  inputBinding:
    prefix: -decimals
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
- BedCoverage
