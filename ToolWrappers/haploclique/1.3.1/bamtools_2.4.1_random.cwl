class: CommandLineTool
id: bamtools_2.4.1_random.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File
  inputBinding:
    prefix: -list
- id: in_out
  doc: the output BAM file [stdout]
  type: File
  inputBinding:
    prefix: -out
- id: in_region
  doc: "only pull random alignments\nfrom within this genomic region. Index\nfile\
    \ is recommended for better\nperformance, and is used automatically if\nit exists.\
    \ See 'bamtools help index' for\nmore details on creating one"
  type: File
  inputBinding:
    prefix: -region
- id: in_force_compression
  doc: "if results are sent to stdout\n(like when piping to another tool),\ndefault\
    \ behavior is to leave output\nuncompressed. Use this flag to override\nand force\
    \ compression"
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: in_number_alignments_grabnote
  doc: "number of alignments to grab.\nNote - no duplicate checking is performed\n\
    [10000]"
  type: long
  inputBinding:
    prefix: -n
- id: in_seed
  doc: "random number generator seed\n(for repeatable results). Current time is\n\
    used if no seed value is provided."
  type: long
  inputBinding:
    prefix: -seed
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_random
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
- random
