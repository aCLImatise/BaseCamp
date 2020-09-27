class: CommandLineTool
id: bamtools_2.4.1_revert.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: the output BAM file [stdout]
  type: File
  inputBinding:
    prefix: -out
- id: in_force_compression
  doc: "if results are sent to stdout\n(like when piping to another tool),\ndefault\
    \ behavior is to leave output\nuncompressed. Use this flag to override\nand force\
    \ compression"
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: in_keep_duplicate
  doc: keep duplicates marked
  type: boolean
  inputBinding:
    prefix: -keepDuplicate
- id: in_keep_qualities
  doc: "keep base qualities (do not\nreplace with OQ contents)"
  type: boolean
  inputBinding:
    prefix: -keepQualities
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_revert
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- revert
