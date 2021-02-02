class: CommandLineTool
id: TOBIAS_FilterFragments.cwl
inputs:
- id: in_bam
  doc: .bam-file to filter
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_regions
  doc: .bed-file containing regions to filter fragments from
  type: boolean
  inputBinding:
    prefix: --regions
- id: in_mode
  doc: "Mode 1: Remove fragment if both reads overlap .bed-regions. Mode 2:\nRemove\
    \ whole fragment if one read is overlapping .bed-regions\n(default: 1)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_output
  doc: 'Path to the filtered .bam-file (default: <prefix of'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_threads
  doc: "Number of threads used for decompressing/compressing bam (default:\n10)"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TOBIAS
- FilterFragments
