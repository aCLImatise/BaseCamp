class: CommandLineTool
id: pauvre_stats.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fast_q
  doc: The input FASTQ file.
  type: string
  inputBinding:
    prefix: --fastq
- id: histogram
  doc: Make a histogram of the read lengths and saves it to a new file
  type: boolean
  inputBinding:
    prefix: --histogram
- id: filt_maxlen
  doc: This sets the max read length filter reads.
  type: string
  inputBinding:
    prefix: --filt_maxlen
- id: filt_max_qual
  doc: This sets the max mean read quality to filter reads.
  type: string
  inputBinding:
    prefix: --filt_maxqual
- id: filt_min_len
  doc: This sets the min read length to filter reads.
  type: string
  inputBinding:
    prefix: --filt_minlen
- id: filt_min_qual
  doc: This sets the min mean read quality to filter reads.
  type: string
  inputBinding:
    prefix: --filt_minqual
outputs: []
cwlVersion: v1.1
baseCommand:
- pauvre
- stats
