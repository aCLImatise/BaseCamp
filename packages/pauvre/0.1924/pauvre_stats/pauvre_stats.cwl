class: CommandLineTool
id: pauvre_stats.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fast_q
  doc: The input FASTQ file.
  type: File
  inputBinding:
    prefix: --fastq
- id: in_histogram
  doc: "Make a histogram of the read lengths and saves it to a\nnew file"
  type: boolean
  inputBinding:
    prefix: --histogram
- id: in_filt_maxlen
  doc: This sets the max read length filter reads.
  type: long
  inputBinding:
    prefix: --filt_maxlen
- id: in_filt_max_qual
  doc: This sets the max mean read quality to filter reads.
  type: long
  inputBinding:
    prefix: --filt_maxqual
- id: in_filt_min_len
  doc: This sets the min read length to filter reads.
  type: long
  inputBinding:
    prefix: --filt_minlen
- id: in_filt_min_qual
  doc: "This sets the min mean read quality to filter reads.\n"
  type: long
  inputBinding:
    prefix: --filt_minqual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pauvre
- stats
