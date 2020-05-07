class: CommandLineTool
id: bamtools_merge.cwl
inputs:
- id: in
  doc: the input BAM file(s)
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: out
  doc: the output BAM file
  type: string
  inputBinding:
    prefix: -out
- id: force_compression
  doc: if results are sent to stdout (like when piping to another tool), default behavior
    is to leave output uncompressed. Use this flag to override and force compression
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: region
  doc: genomic region. See README for more details
  type: string
  inputBinding:
    prefix: -region
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- merge
