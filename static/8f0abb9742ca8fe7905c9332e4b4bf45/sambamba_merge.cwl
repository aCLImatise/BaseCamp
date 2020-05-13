class: CommandLineTool
id: sambamba_merge.cwl
inputs:
- id: n_threads
  doc: number of threads to use for compression/decompression
  type: string
  inputBinding:
    prefix: --nthreads
- id: compression_level
  doc: level of compression for merged BAM file, number from 0 to 9
  type: string
  inputBinding:
    prefix: --compression-level
- id: header
  doc: output merged header to stdout in SAM format, other options are ignored; mainly
    for debug purposes
  type: boolean
  inputBinding:
    prefix: --header
- id: show_progress
  doc: show progress bar in STDERR
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: filter
  doc: keep only reads that satisfy FILTER
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- merge
