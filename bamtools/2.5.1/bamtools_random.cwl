class: CommandLineTool
id: bamtools_random.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: out
  doc: the output BAM file [stdout]
  type: string
  inputBinding:
    prefix: -out
- id: region
  doc: only pull random alignments from within this genomic region. Index file is
    recommended for better performance, and is used automatically if it exists. See
    'bamtools help index' for more details on creating one
  type: string
  inputBinding:
    prefix: -region
- id: force_compression
  doc: if results are sent to stdout (like when piping to another tool), default behavior
    is to leave output uncompressed. Use this flag to override and force compression
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: n
  doc: number of alignments to grab. Note - no duplicate checking is performed [10000]
  type: string
  inputBinding:
    prefix: -n
- id: seed
  doc: random number generator seed (for repeatable results). Current time is used
    if no seed value is provided.
  type: string
  inputBinding:
    prefix: -seed
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- random
