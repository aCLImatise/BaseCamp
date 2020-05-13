class: CommandLineTool
id: SAMstatsParallel.cwl
inputs:
- id: sorted_sam_file
  doc: Input SAM file. Use '-' if input is being piped from stdin. File must be sorted
    by read name.
  type: string
  inputBinding:
    prefix: --sorted_sam_file
- id: out_f
  doc: Output file name to store alignment statistics. The statistics will be printed
    to stdout if no file is provided
  type: string
  inputBinding:
    prefix: --outf
- id: chunk_size
  doc: Number of lines to read a time from sortedSamFile
  type: string
  inputBinding:
    prefix: --chunk_size
- id: threads
  doc: 'number of threads to use. Note: the default is'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- SAMstatsParallel
