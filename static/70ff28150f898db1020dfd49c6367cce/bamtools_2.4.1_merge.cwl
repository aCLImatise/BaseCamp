class: CommandLineTool
id: bamtools_2.4.1_merge.cwl
inputs:
- id: in_in
  doc: the input BAM file(s)
  type: File?
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File?
  inputBinding:
    prefix: -list
- id: in_out
  doc: the output BAM file
  type: File?
  inputBinding:
    prefix: -out
- id: in_force_compression
  doc: "if results are sent to stdout\n(like when piping to another tool),\ndefault\
    \ behavior is to leave output\nuncompressed. Use this flag to override\nand force\
    \ compression"
  type: boolean?
  inputBinding:
    prefix: -forceCompression
- id: in_region
  doc: "genomic region. See README for\nmore details"
  type: string?
  inputBinding:
    prefix: -region
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- merge
