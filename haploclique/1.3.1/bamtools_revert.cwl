class: CommandLineTool
id: bamtools_revert.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: the output BAM file [stdout]
  type: string
  inputBinding:
    prefix: -out
- id: force_compression
  doc: if results are sent to stdout (like when piping to another tool), default behavior
    is to leave output uncompressed. Use this flag to override and force compression
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: keep_duplicate
  doc: keep duplicates marked
  type: boolean
  inputBinding:
    prefix: -keepDuplicate
- id: keep_qualities
  doc: keep base qualities (do not replace with OQ contents)
  type: boolean
  inputBinding:
    prefix: -keepQualities
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- revert
