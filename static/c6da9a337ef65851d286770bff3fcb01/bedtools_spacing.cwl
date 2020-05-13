class: CommandLineTool
id: bedtools_spacing.cwl
inputs:
- id: chr1
  doc: '0   10  . '
  type: string
  inputBinding:
    position: 0
- id: chr1
  doc: '10  20  0 '
  type: string
  inputBinding:
    position: 1
- id: chr1
  doc: '19  30  -1 '
  type: string
  inputBinding:
    position: 2
- id: chr1
  doc: '35  45  5 '
  type: string
  inputBinding:
    position: 3
- id: chr1
  doc: '100 200 55 '
  type: string
  inputBinding:
    position: 4
- id: bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: no_buf
  doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: i_obuf
  doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  type: boolean
  inputBinding:
    prefix: -iobuf
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- spacing
