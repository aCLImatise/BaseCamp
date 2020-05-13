class: CommandLineTool
id: bedtools_sample.cwl
inputs:
- id: n
  doc: The number of records to generate. - Default = 1,000,000. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -n
- id: seed
  doc: Supply an integer seed for the shuffling. - By default, the seed is chosen
    automatically. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -seed
- id: ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: s
  doc: Require same strandedness.  That is, only give records that have the same strand.
    Use '-s forward' or '-s reverse' for forward or reverse strand records, respectively.
    - By default, records are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: header
  doc: the header from the input file prior to results.
  type: string
  inputBinding:
    prefix: -header
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
- sample
