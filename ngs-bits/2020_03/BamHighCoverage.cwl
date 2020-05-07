class: CommandLineTool
id: BamHighCoverage.cwl
inputs:
- id: in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: cut_off
  doc: Minimum depth to consider a chromosomal position 'high coverage'.
  type: long
  inputBinding:
    prefix: -cutoff
- id: min_mapq
  doc: "Minimum mapping quality. Default value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
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
- BamHighCoverage
