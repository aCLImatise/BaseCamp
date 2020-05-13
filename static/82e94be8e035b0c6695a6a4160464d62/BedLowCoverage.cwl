class: CommandLineTool
id: BedLowCoverage.cwl
inputs:
- id: bam
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -bam
- id: cut_off
  doc: Minimum depth to consider a base 'high coverage'.
  type: long
  inputBinding:
    prefix: -cutoff
- id: in
  doc: "Input BED file containing the regions of interest. If unset, reads from STDIN.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: wgs
  doc: "WGS mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -wgs
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: min_mapq
  doc: "Minimum mapping quality to consider a read. Default value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
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
- BedLowCoverage
